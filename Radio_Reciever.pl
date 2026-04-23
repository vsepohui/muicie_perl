#Radio_Reciever

use 5.022;
use warnings;

my $signal = <>;
chomp $signal;

if (length($signal)) {
	say +$signal;
}

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
