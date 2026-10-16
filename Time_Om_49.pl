#Time [Om_250]

use 5.022;

my $freq = 49;
my $sec_in_min = 60;

$freq /= $sec_in_min;

my $o;

my $t = <>;
 
if ($t > 0) {
    $o = $t / $freq;
} else {
    $o = -1;
}
 
say $o;

# Code by GPU Officer Yahwe
