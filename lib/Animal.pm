package Animal;
use Moose::Role;
use namespace::autoclean;
use Moose::Util::TypeConstraints;
use namespace::autoclean;

requires qw(sound default_color);

has 'name' => ( is => 'rw' );
enum 'ColorStr' => [qw(brown black grey)];
has 'color'     => (
    is      => 'rw',
    isa     => 'ColorStr',
    default => sub { shift->default_color }
);

sub speak {
    my $self = shift;
    print $self->name, " goes ", $self->sound, "!\n";
}

1;
