# Power_Screen

use 5.022;

my $contrast = 255;   # Need to rewrite on update Firmware
my $transparanse = 0; # Need to rewrite on update Firmware

my $colors;
my $sign;
my $is_fake;

my ($r, $g, $b);
my $sum;

$colors = <>;   # Input colors in RGB Format "$int,$int,$int"
$sign = <>;     # Input Sign
$is_fake = <>;  # Input fake-signal flag (!)
chomp $colors;  # Chomp colors string endline
chomp $is_fake; # Chomp fake-signal flag string endline

$colors = '0,0,0' if ($is_fake eq 'true' || $is_fake eq '1'); # If fake-flag is TRUE, setup BLACK-Screen for User (!)

($r, $g, $b) = split /,/, $colors; # Split RGB in color string
$sum = $r + $g + $b;               # Calc sum of int R+G+B
	
# Starting Output...

say $contrast;     # Output contrast constant
say $r;            # Output Red value
say $sum / 255;    # Output $sum RGB / 255
say $transparanse; # Output transparanse constant

# Output MAX ($R, $G, $B):
if (($r > $g) && ($r > $b)) {
  say $r;
} else {
  if ($g > $b) {
    say $g;
  } else {
    say $b;
  }
}	

# Output MIN ($R, $G, $B):
if (($r < $g) && ($r < $b)) {
  say $r;
} else {
  if ($g < $b) {
    say $g;
  } else {
    say $b;
  }
}	

say $g;      # Output Green
print $sign; # Output Sign

# by Tovarisch Trunaev, 2025, Russia, Uray
# Om->Delf();
