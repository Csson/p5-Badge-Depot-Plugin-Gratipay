use strict;
use warnings;

package Badge::Depot::Plugin::Gratipay;

use Moose;
use namespace::autoclean;
use Types::Standard qw/Str/;
use Types::URI qw/Uri/;
with 'Badge::Depot';

our $VERSION = '0.0104';
# ABSTRACT: Gratipay plugin for Badge::Depot (deprecated)
# AUTHORITY

has user => (
    is => 'ro',
    isa => Str,
    required => 1,
);
has custom_image_url => (
    is => 'ro',
    isa => Uri,
    coerce => 1,
    default => 'https://img.shields.io/gratipay/%s.svg',
);


sub BUILD {
    my $self = shift;
    $self->link_url(sprintf 'https://gratipay.com/%s', $self->user);
    $self->image_url(sprintf $self->custom_image_url, $self->user);
    $self->image_alt('Gratipay');
}

1;

__END__


=pod

=head1 SYNOPSIS

    use Badge::Depot::Plugin::Gratipay;

    my $badge = Badge::Depot::Plugin::Gratipay->new(user => 'my_name');

    print $badge->to_html;
    # prints '<a href="https://gratipay.com/my_name"><img src="https://img.shields.io/my_name.svg" /></a>'

=head1 STATUS

Deprecated. Since L<Gratipay|https://gratipay.com> has shut down this distribution has no purpose.

=head1 DESCRIPTION

Create a L<Gratipay|https://gratipay.com> badge for a Gratipay user.

This class consumes the L<Badge::Depot> role.

=head1 ATTRIBUTES

=head2 user

The Gratipay user name.

=head2 custom_image_url

By default, this module shows an image from L<shields.io|https://shields.io>. Use this attribute to override that with a custom url. Use a C<%s> placeholder where the user name should be inserted.

=head1 SEE ALSO

=for :list
* L<Badge::Depot>
* L<Task::Badge::Depot>

=cut
