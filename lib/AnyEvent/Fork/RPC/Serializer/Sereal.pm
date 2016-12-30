# Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras
# anyevent-fork-rpc-serializer-sereal is licensed under the Apache License, Version 2.0

#-> BEGIN

#-> initialization

package AnyEvent::Fork::RPC::Serializer::Sereal 0.1;

use Navel::Base;

use constant {
    SERIALIZER => '
use Sereal;

my $encode_sereal_constructor = Sereal::Encoder->new;

my $decode_sereal_constructor = Sereal::Decoder->new;

(
    sub {
        $encode_sereal_constructor->encode(\@_);
    },
    sub {
        @{$decode_sereal_constructor->decode(shift)};
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

AnyEvent::Fork::RPC::Serializer::Sereal

=head1 COPYRIGHT

Copyright (C) 2015-2016 Yoann Le Garff, Nicolas Boquet and Yann Le Bras

=head1 LICENSE

anyevent-fork-rpc-serializer-sereal is licensed under the Apache License, Version 2.0

=cut
