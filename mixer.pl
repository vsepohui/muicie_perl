my $s = <>;
chomp $s;
my @list = split /\s/, $s;
my @out = map {$_ / 8} @list;
print join " ", @out;

# GPU Officer Trunaev, Yahwe.
