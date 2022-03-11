<?php

$finder = PhpCsFixer\Finder::create()
    // #todo remove unnecessary folders
    ->in(__DIR__ . '/bin')
    ->in(__DIR__ . '/config')
    ->in(__DIR__ . '/data')
    ->in(__DIR__ . '/public')
    ->in(__DIR__ . '/src')
    ->in(__DIR__ . '/tests')
    ->in(__DIR__ . '/view')
;

return (new PhpCsFixer\Config())
    ->setRules([
        '@PSR2' => true,
        'array_indentation' => true,
        'array_syntax' => true,
        'binary_operator_spaces' => [
            'operators' => [
                '=>' => 'single_space',
            ]
        ],
        'blank_line_after_opening_tag' => true,
        'concat_space' => [
            'spacing' => 'one',
        ],
        'declare_strict_types' => true,
        'general_phpdoc_annotation_remove' => [
            'annotations' => [
                'author',
            ],
        ],
        'include' => true,
        'method_chaining_indentation' => true,
        'modernize_types_casting' => true,
        'new_with_braces' => true,
        'no_empty_statement' => true,
        'no_empty_comment' => true,
        'no_empty_phpdoc' => true,
        'no_extra_blank_lines' => true,
        'no_leading_import_slash' => true,
        'no_leading_namespace_whitespace' => true,
        'no_singleline_whitespace_before_semicolons' => true,
        'no_superfluous_phpdoc_tags' => [
            'remove_inheritdoc' => true,
        ],
        'no_trailing_comma_in_singleline_array' => true,
        'no_unused_imports' => true,
        'no_whitespace_in_blank_line' => true,
        'object_operator_without_whitespace' => true,
        'ordered_imports' => true,
        'phpdoc_line_span' => [
            'property' => 'single',
        ],
        'return_type_declaration' => [
            'space_before' => 'none',
        ],
        'single_blank_line_before_namespace' => true,
        'ternary_operator_spaces' => true,
        'trailing_comma_in_multiline' => true,
    ])
    ->setRiskyAllowed(true)
    ->setFinder($finder)
;
