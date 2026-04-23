#NVM

use 5.022;
use warnings;

my @s = <>;
my $sign = pop @s;

my $endl = chr (141);

for (@s) {
	chomp;
}

say $endl . ' ' . join $endl, @s;
say $sign;


# by Tovarisch Trunaev, 2026, Russia, Uray
