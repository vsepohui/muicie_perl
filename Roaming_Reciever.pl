#Roaming_Reciver

use 5.022;
use warnings;

# Input 
my $id = <>;
my $balance = <>;

# Chomp endline
chomp $balance;

# Chomp ending '.' if "integer"
$balance =~ s/\.$//;

# Output
say $balance;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
