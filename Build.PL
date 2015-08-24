use strict;
use warnings;

use Module::Build;

my %module_build_args = (
    dist_version_from  => 'bin/cisco-webdialer',
    module_name        => 'App::cisco-webdialer',
    build_requires     => { 'Module::Build' => '0' },
    configure_requires => { 'Module::Build' => '0' },
    license            => 'perl',
    meta_merge         => {
        resources => {
            repository => 'git://vcs.hal.taz.de:users/mdom/webdialer'
        }
    },
    requires => {
        'SOAP::Lite'             => 0,
        'Passwd::Keyring::Gnome' => 0,
    },
    test_requires => {},
);

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

