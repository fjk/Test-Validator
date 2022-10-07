use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::Validator',
    license             => 'artistic2',
    dist_author         => 'fjk <frank.kropp@hotmail.com>',
    dist_version_from   => 'lib/Test/Validator.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Test-Validator-*' ],
);

$builder->create_build_script();
