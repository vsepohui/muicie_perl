my $contrast = 255;   # Need to rewrite on update Firmware
my $transparanse = 0; # Need to rewrite on update Firmware

my $colors;
my $sign;

my ($r, $g, $b);
my $sum;

$colors = <>;
$sign = <>;
chomp $colors;

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
{ Om->Delf(); }
