package Mouse;
use Moose;
use namespace::autoclean;

with 'Animal';

sub sound {'squeak'}

after 'speak' => sub { print "[but you can barely hear it]\n" };

sub default_color {'grey'}

1;
