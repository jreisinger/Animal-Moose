package Animal;
use Moose;
use namespace::autoclean;

has 'name'  => ( is => 'rw' );
has 'color' => ( is => 'rw' );
has 'born'  => ( is => 'rw' );
has 'sound' => (
    is      => 'ro',
    default => sub { confess shift, " needs to define sound!" }
);

sub speak {
    my $self = shift;
    print $self->name, " goes ", $self->sound, "\n";
}

sub years {
    my $self     = shift;
    my $year_now = (localtime)[5] + 1900;
    print $self->name, " is ", $year_now - $self->born, "\n";
}

1;
