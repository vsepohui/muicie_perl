my @i = <>;
my $sign = pop @i;

my $t;
for $t (@i) {
  chomp $t;
  say join ' ' split /\D+/, $t;
}

say $sign;

# Tovarisch Trunaev, GPU Officer Yahwe, Russia, Uray
# $Om->Delf();
