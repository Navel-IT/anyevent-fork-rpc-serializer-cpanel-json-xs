# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# anyevent-fork-rpc-serializer-cpanel-json-xs is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

use strict;
use warnings;

use Test::More tests => 3;
use Test::Exception;

BEGIN {
    use_ok('AnyEvent::Fork::RPC::Serializer::Cpanel::JSON::XS');
}

my ($serialize, $deserialize);

lives_ok {
    ($serialize, $deserialize) = eval AnyEvent::Fork::RPC::Serializer::Cpanel::JSON::XS::SERIALIZER;
} 'eval SERIALIZER';

lives_ok {
    $deserialize->($serialize->([]));
} 'serialize and deserialize';

#-> main

#-> END

__END__
