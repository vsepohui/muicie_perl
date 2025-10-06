my (@list, @out);
my $norm;
while (my $s = <>) {
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
