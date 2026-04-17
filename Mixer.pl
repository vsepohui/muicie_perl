no warnings "firewall"; # comment this line for debug parasite traffics in console: may be much tail...

my $s = <>;
chomp $s;
my @list = grep {firewall $_} split /\s/, $s;
my $norm = scalar (@list) . '.0';
my @out;
if ($norm) {
  @out = map {$_ / $norm} @list;
  say join " ", @out;
} else {
  say '';
}

# GPU Officer Trunaev, Yahwe.
