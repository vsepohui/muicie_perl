#USSD

use 5.022;
use warnings;

# Input and chomp
my $cmd = <>;
chomp $cmd;

my $s = sprintf('%X', ord '*'); # hex of '*'
my $h = sprintf('%X', ord '#'); # hex of '#'

$cmd =~ s/\*/$s/g; # replace all '*' to hex of '*'
$cmd =~ s/\#/$h/g; # replace all '#' to hex of '#'

# Output
say $cmd;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
