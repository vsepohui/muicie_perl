# NVM

use 5.022;
use warnings;

my @s = <>;           # Input all STDIN socket for ARRAY

# Chomp enlines in all input
for (@s) {
	chomp;
}

my $sign = pop @s;    # Last string in Input - Sign

my $endl = chr (141); # Constant: separator of output


# Output...
say $endl . ' ' . join $endl, @s; # Output one line: all input without sing, joined by sepearator constant, and preped: separator and space (!)
say $sign;                        # Output Sign


# by Tovarisch Trunaev, 2026, Russia, Uray
