#Roaming

use 5.022;
use warnings;

use Digest::CRC qw(crc16);

# Input
my $id = <>; 
my $balance = <>;

# Chomp endlines
chomp $id;
chomp $balance;

# Balance ending zeros to ending '.'
$balance =~ s/\.0+$/\./;

# Integer balance
my $b = int $balance;

# Add ending '.' if balance was integer
$balance = $b . '.' if $b == $balance;

# Remove from id noisy symbols
$id =~ s/[^\d\-\#ACEa-z]//g;

# Calc hex of crc16 of id
my $hex = sprintf("%X", crc16($id));

# Output hex, and balance
say $hex;
say $balance;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
