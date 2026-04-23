#Mouse

use 5.022;

my $xy = <>;
my $click = <>;
my $sign = <>;

chomp $xy;
chomp $click;
chomp $sign;

my ($x,$y) = map {int} split /,/, $xy;
$click = 1 if $click eq 'true';
$click = 0 if $click eq 'false';

say $x . ',' . $y;
say $click;
say $sign;


# Tovarisch Trunaev, GPU Officer Yahwe, Russia, Uray, 2026
# $Om->Delf();
