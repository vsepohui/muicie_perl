my ($signal, $sign);

$signal = <>;
$sign = <>;
chomp $signal;

if (($signal >= -1) && ($signal <= 1)) {
  say $signal;
} else {
  if ($signal > 1) {
    say 1;
  } else {
    say -1;
  }
}

print $sign;

# by Tovarisch Trunaev, 2025, Russia, Uray
# $Om->Delf();
