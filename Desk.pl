#Desk

use 5.022;

my $sum = <>;   # Read bill in string "%%.%?%?"
chomp $sum;     # chomp endline

# Checking Karma of Sum...
if (Karma($sum)) {
	my ($int, $part) = split /\./, $sum;   # split by separator "."

	# if fractional part of a number not specified, set in "00"
	$part ||= '00';                       

	if (length ($part) == 1) { # in fraction part one digit add ending zero
	  $part .= '0';
	}

	say $int . $part; # output full bill
}

# Cashdesk CPU Sourcecode, 2025, GPU Officer Yahwe, Russia, Siberia, Uray
# $Om->Sing('Delf');
