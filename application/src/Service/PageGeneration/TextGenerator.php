<?php

namespace App\Service\PageGeneration;

use App\Entity\TextPage;
use App\Exception\PageGenerationException;
use Symfony\Component\Translation\Exception\InvalidArgumentException;
use App\Service\PageGenerationAbstract;

class TextGenerator extends PageGenerationAbstract
{
    /**
     * List of Fields with predefined values
     * @var static array $fields
     */
    private static $defaultFields = [
        'title' => '',
        'text' => ''
    ];

    /**
     * @param int $id
     * @param array $data
     * @return int
     * @throws PageGenerationException
     * @throws InvalidArgumentException
     */
    public function save($id = null, $data = null) :int
    {
        /** binding data */
        $this->bindData((array) $this::$defaultFields, $data ?? []);

        /** getting repository */
        $repository = $this->em->getRepository(TextPage::class);

        /** checking if we need to create an element */
        if ($id === null) {
            $this->logger->debug('page ID is null, we are creating a new page');
            $this->element = new TextPage();
        } elseif (is_numeric($id)) {
            /** or if we retrieve an existing one */
            $this->logger->debug('page ID is ' . $id . ' and we are loading the element instance');

            if (!$this->element = $repository->find($id)) {
                $this->logger->error('page ID not found: ' . $id);
                throw new PageGenerationException($this->translator->trans('Cannot load page from service'));
            }
        } else {
            /** or... well... nothing is fancy everytime */
            $this->logger->error('page ID not valid: ' . $id);
            throw new PageGenerationException($this->translator->trans('Page ID is not valid'));
        }

        /** Updating / inserting values to the element */
        $this->persistElement();

        /** returns id */
        return $this->element->getId();
    }

    /**
     * Binding data to the ORM Object
     */
    private function persistElement() :void
    {
        /** data is being bind */
        $this->element->setTitle($this->data['title']);
        $this->element->setText($this->data['text']);

        /** persisting the object */
        $this->em->persist($this->element);
        $this->em->flush();
    }
}
