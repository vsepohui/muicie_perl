#Microwave_Oven

my $t = <>; # Input power % value
chomp $t;   # Chomp endline

$t ++;      # $power ++;
$t = 100 if $t > 100; # If $power > 100%, setup 100%

say $t;     # Output power

# Ivan Trunaev, Yahwe, 2026, Russia, Uray
