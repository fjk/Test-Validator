use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Test::Validator',
    AUTHOR              => 'fjk <frank.kropp@hotmail.com>',
    VERSION_FROM        => 'lib/Test/Validator.pm',
    ABSTRACT_FROM       => 'lib/Test/Validator.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-Validator-*' },
);
