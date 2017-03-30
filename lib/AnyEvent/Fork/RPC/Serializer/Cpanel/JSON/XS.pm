# Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# anyevent-fork-rpc-serializer-cpanel-json-xs is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

package AnyEvent::Fork::RPC::Serializer::Cpanel::JSON::XS 0.1;

use Navel::Base;

use constant {
    SERIALIZER => '
use Cpanel::JSON::XS;

my $json_constructor = Cpanel::JSON::XS->new->allow_nonref->utf8;

(
    sub {
        $json_constructor->encode(\@_);
    },
    sub {
        @{$json_constructor->decode(shift)};
    }
);
'
};

#-> methods

# sub AUTOLOAD {}

# sub DESTROY {}

1;

#-> END

__END__

=pod

=encoding utf8

=head1 NAME

 AnyEvent::Fork::RPC::Serializer::Cpanel::JSON::XS

=head1 COPYRIGHT

Copyright (C) 2015-2017 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

anyevent-fork-rpc-serializer-cpanel-json-xs is licensed under the Apache License, Version 2.0

=cut
