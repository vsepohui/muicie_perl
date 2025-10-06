my $s = <>;
chomp $s;
my @list = split /\s/, $s;
my $norm = scalar (@list) . '.0';
my @out;
if ($norm) {
  @out = map {$_ / $norm} @list;
  say join " ", @out;
} else {
  say '';
}

# GPU Officer Trunaev, Yahwe.
