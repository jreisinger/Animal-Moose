package Horse;
use Moose;
use namespace::autoclean;

with 'Animal';

sub sound { 'neigh' }

{
    use Moose::Util::TypeConstraints;
    enum 'ColorStr' => [qw(brown black)];
    use namespace::autoclean;
}

sub default_color { 'black' }

1;
