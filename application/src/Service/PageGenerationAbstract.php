<?php

namespace App\Service;

use Psr\Log\LoggerInterface;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Translation\TranslatorInterface;

class PageGenerationAbstract
{
    /**
     * @var LoggerInterface $logger
     */
    protected $logger;

    /**
     * @var EntityManagerInterface $em
     */
    protected $em;

    /**
     * @var TranslatorInterface $translator
     */
    protected $translator;

    /**
     * Storing data to the object persistence
     * @var array $data
     */
    protected $data = [];

    /**
     * Stores the Entity Object
     * @var $element
     */
    protected $element;

    /**
     * TextGenerator constructor.
     * @param LoggerInterface $logger
     * @param EntityManagerInterface $em
     * @param TranslatorInterface $translator
     */
    public function __construct(LoggerInterface $logger, EntityManagerInterface $em, TranslatorInterface $translator)
    {
        $this->logger = $logger;
        $this->em = $em;
        $this->translator = $translator;
    }

    /**
     * Bind data array to object $data property for later use
     * @param array $defaultValues
     * @param array $data
     * @return void
     */
    protected function bindData(array $defaultValues, array $data) :void
    {
        foreach ($defaultValues as $key => $value) {
            \array_key_exists($key, $data) ? $this->data[$key] = $data[$key] : $this->data[$key] = $value;
        }
    }
}
