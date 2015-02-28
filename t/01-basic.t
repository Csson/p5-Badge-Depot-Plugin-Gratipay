use strict;
use warnings;

use Test::More;
use if $ENV{'AUTHOR_TESTING'}, 'Test::Warnings';

BEGIN {
    use_ok 'Badge::Depot::Plugin::Gratipay';
}

my $badge = Badge::Depot::Plugin::Gratipay->new(user => 'testuser');

is $badge->to_html,
   '<a href="https://gratipay.com/testuser"><img src="https://img.shields.io/gratipaytestuser.svg" alt="Gratipay" /></a>',
   'Correct html';

done_testing;
