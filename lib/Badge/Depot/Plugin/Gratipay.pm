use strict;
use warnings;

package Badge::Depot::Plugin::Gratipay;

use Moose;
use namespace::autoclean;
use Types::Standard qw/Str/;
use Types::URI qw/Uri/;
with 'Badge::Depot';

# VERSION
# ABSTRACT: Gratipay plugin for Badge::Depot

has user => (
    is => 'ro',
    isa => Str,
    required => 1,
);
has image_url => (
    is => 'ro',
    isa => Uri,
    coerce => 1,
    default => 'https://img.shields.io/gratipay/%s.svg',
);


sub BUILD {
    my $self = shift;
    $self->link_url(sprintf 'https://gratipay.com/%s', $self->user);
    $self->image_url(sprintf $self->image_url, $self->user);
    $self->image_alt('Gratipay');
}

1;

__END__

=pod

=head1 SYNOPSIS

    use Badge::Depot::Plugin::Gratipay;

=head1 DESCRIPTION

Badge::Depot::Plugin::Gratipay is ...

=head1 SEE ALSO

=cut
