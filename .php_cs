<?php

$finder = PhpCsFixer\Finder::create()
    ->in(__DIR__)
    ->exclude('vendor')
;

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
        'array_syntax' => ['syntax' => 'short'],
        'blank_line_after_opening_tag' => true,
        'declare_strict_types' => true,
        'no_unused_imports' => true,
        'phpdoc_line_span' => ['property' => 'single'],
        'return_type_declaration' => ['space_before' => 'none'],
        'single_blank_line_before_namespace' => true,
    ])
    ->setRiskyAllowed(true)
    ->setFinder($finder)
;
