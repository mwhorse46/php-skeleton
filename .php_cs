<?php

$finder = PhpCsFixer\Finder::create()
    ->in(__DIR__)
    ->exclude('vendor')
;

return PhpCsFixer\Config::create()
    ->setRules([
        '@PSR2' => true,
        'array_syntax' => ['syntax' => 'short'],
        'binary_operator_spaces' => ['align_double_arrow' => null],
        'blank_line_after_opening_tag' => true,
        'declare_strict_types' => true,
        'no_trailing_comma_in_singleline_array' => true,
        'no_unused_imports' => true,
        'phpdoc_line_span' => ['property' => 'single'],
        'return_type_declaration' => ['space_before' => 'none'],
        'single_blank_line_before_namespace' => true,
        'trailing_comma_in_multiline_array' => true,
    ])
    ->setRiskyAllowed(true)
    ->setFinder($finder)
;
