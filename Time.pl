my $freq = 120;
my $sec_in_min = 60;
$freq /= $sec_in_min;

my $o;

my $t = <>;
 
if ($t > 0) {
    $o = $freq / $t;
} else {
    $o = -1;
}
 
say $o;

# Code by GPU Officer Yahwe
