# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# anyevent-fork-rpc-serializer-sereal is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

use strict;
use warnings;

use ExtUtils::MakeMaker;

#-> main

my $min_perl_version = '5.18.0';

WriteMakefile(
    NAME => 'AnyEvent::Fork::RPC::Serializer::Sereal',
    VERSION_FROM => 'lib/AnyEvent/Fork/RPC/Serializer/Sereal.pm',
    ABSTRACT => 'anyevent-fork-rpc-serializer-sereal',
    AUTHOR => 'Yoann Le Garff, Nicolas Boquet and Yann Le Bras',
    LICENSE => 'apache_2_0',
    META_MERGE => {
        requires => {
            perl => $min_perl_version
        },
        resources => {
            license => 'http://www.apache.org/licenses/LICENSE-2.0.html',
            repository => 'http://github.com/Navel-IT/anyevent-fork-rpc-serializer-sereal'
        }
    },
    MIN_PERL_VERSION => $min_perl_version,
    PREREQ_PM => {
        'Navel::Base' => 0,
        'Sereal' => 0
    },
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.64
    },
    TEST_REQUIRES => {
        'Test::More' => 0,
        'AnyEvent' => 0
    },
    test => {
        TESTS => 't/*.t'
    }
);

#-> END

__END__
