package Animal;
use Moose::Role;
use namespace::autoclean;

requires qw(sound default_color);

has 'name' => ( is => 'rw' );
has 'color' => (
    is      => 'rw',
    isa     => 'ColorStr',
    default => sub { shift->default_color }
);

{
    use Moose::Util::TypeConstraints;
    enum 'ColorStr' => [qw(brown black)];
    use namespace::autoclean;
}

sub speak {
    my $self = shift;
    print $self->name, " goes ", $self->sound, "!\n";
}

1;
