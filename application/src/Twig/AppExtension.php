<?php

namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;

class AppExtension extends AbstractExtension
{
    public function getFilters()
    {
        return array(
            new TwigFilter('toSlug', array($this, 'toSlugFilter')),
            new TwigFilter('toHash', array($this, 'toArrayFilter'))
        );
    }

    public function toSlugFilter($slug)
    {
        // Remove HTML tags
        $slug = preg_replace('/<(.*?)>/u', '', $slug);

        // Remove inner-word punctuation.
        $slug = preg_replace('/[\'"‘’“”]/u', '', $slug);

        // Make it lowercase
        $slug = mb_strtolower($slug, 'UTF-8');

        // Get the "words".  Split on anything that is not a unicode letter or number.
        // Periods are OK too.
        preg_match_all('/[\p{L}\p{N}\.]+/u', $slug, $words);
        $words = array_filter($words[0], function ($val) {
            return \is_string($val) && $val !== '';
        });
        $slug = implode('-', $words);

        return $slug;
    }

    public function toArrayFilter($id)
    {
        /*$hashids = new \Hashids\Hashids();

        return $hashids->encode($id);*/
        return $id;
    }
}
