my (@list, @out);
my $norm;
for (1..32) {
  $s = <>;
  chomp $s;
  @list = split /\s/, $s;
  $norm = scalar (@list) . '.0';
  if ($norm) {
     @out = map {$_ / $norm} @list;
    say join " ", @out;
  } else {
    say '';
  }
}

# GPU Officer Trunaev, Yahwe.
