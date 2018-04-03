<?php

namespace App\Service;

use Doctrine\ORM\EntityManagerInterface;
use Psr\Log\LoggerInterface;
use App\Exception\PageGenerationException;
use Symfony\Component\Translation\Exception\InvalidArgumentException;
use Symfony\Component\Translation\TranslatorInterface;

class PageGenerator
{
    /** @var LoggerInterface $logger */
    private $logger;

    /** @var TranslatorInterface $translator */
    private $translator;

    private $em;

    /**
     * Allowed Page Types
     * @var array $pageTypes
     */
    private static $pageTypes = [
        'text',
        'image',
        'list'
    ];

    /**
     * Define the namespace to look for dynamic class loading
     * @var string $pageHandlerNamespace
     */
    private static $pageHandlerNamespace = 'App\Service\PageGeneration';

    /**
     * @var string $pageType
     */
    private $pageType;

    /**
     * PageGenerator constructor.
     * @param LoggerInterface $logger
     * @param TranslatorInterface $translator
     */
    public function __construct(LoggerInterface $logger, TranslatorInterface $translator, EntityManagerInterface $em)
    {
        $this->logger = $logger;
        $this->translator = $translator;
        $this->em = $em;
    }

    /**
     * @param string $pageType
     * @throws PageGenerationException
     * @throws InvalidArgumentException
     * @return mixed
     */
    public function setPageType(string $pageType)
    {
        /** Are we idiots? */
        $pageType = strtolower($pageType);
        $this->logger->debug('setting page type as ' . $pageType);

        /** Checking page Type */
        if (!$this->checkPageType($pageType)) {
            $this->logger->error('page Type ' . $pageType . ' has not been found');
            throw new PageGenerationException(
                $this->translator->trans(
                    'Page Type %pageType% is not allowed',
                    [
                        '%pageType%' => $pageType
                    ]
                )
            );
        }

        /** Setting up the Variable */
        $this->pageType = $pageType;

        return $this->getHandler();
    }

    /**
     * @return mixed
     * @throws PageGenerationException
     */
    private function getHandler()
    {
        $this->logger->debug('trying to load page handler with page type: ' . $this->pageType);

        /** generating the class name */
        $classNamespace = $this::$pageHandlerNamespace . '\\' . ucfirst($this->pageType) . 'Generator';
        $this->logger->debug('finding class namespace: ' . $classNamespace);

        /** loading the class */
        try {
            $this->logger->debug('loading class: ' . $classNamespace);
            return new $classNamespace($this->logger, $this->em, $this->translator);
        } catch (\Exception $e) {
            $this->logger->error('Class ' . $classNamespace . ' not found');
            throw new PageGenerationException($e->getMessage());
        }
    }

    /**
     * Checks if a pageType is correct
     * @param string $pageType
     * @return bool
     */
    private function checkPageType(string $pageType) :bool
    {
        return \in_array($pageType, $this::$pageTypes, true);
    }
}