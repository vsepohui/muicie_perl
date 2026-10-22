#Time [Om_250]

use 5.022;

my $freq = 49;
my $sec_in_min = 60;

$freq /= $sec_in_min;

my $o;

my $t = <>; # Input timestamp
chomp $t;   # Chomp endline
 
$o = $t / $freq; # Divide timestamp on Freq
 
say $o; # Output

# Code by GPU Officer Yahwe
