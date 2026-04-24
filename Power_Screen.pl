#Power_Screen

use 5.022;

my $contrast = 255;   # Need to rewrite on update Firmware
my $transparanse = 0; # Need to rewrite on update Firmware

my $colors;
my $sign;
my $is_fake;

my ($r, $g, $b);
my $sum;

$colors = <>;
$sign = <>;
$is_fake = <>;
chomp $colors;
chomp $is_fake;

$colors = '0,0,0' if ($is_fake eq 'true' || $is_fake eq '1');

($r, $g, $b) = split /,/, $colors;
$sum = $r + $g + $b;
	
say $contrast; # 1
say $r;        # 2
say $sum / 255; # 3 	
say $transparanse; # 4 

# 5
if (($r > $g) && ($r > $b)) {
  say $r;
} else {
  if ($g > $b) {
    say $g;
  } else {
    say $b;
  }
}	

# 6
if (($r < $g) && ($r < $b)) {
  say $r;
} else {
  if ($g < $b) {
    say $g;
  } else {
    say $b;
  }
}	

say $g;      # 7
print $sign; # 8

# by Tovarisch Trunaev, 2025, Russia, Uray
# Om->Delf();
