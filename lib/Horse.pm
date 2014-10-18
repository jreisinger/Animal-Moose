package Horse;
use Moose;
use namespace::autoclean;

with 'Animal';

sub sound {'neigh'}

sub default_color {'black'}

1;
