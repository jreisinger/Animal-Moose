use Test::More;
use strict;
use warnings;

BEGIN { use_ok 'Horse' }

can_ok( 'Horse', qw(new sound color name speak) );

my $h = Horse->new( name => 'Ed' );
isa_ok( $h, 'Horse' );
is( $h->name, 'Ed', 'Got the right name' );

done_testing;
