#SMS

use 5.022;
use warnings;

use Digest::CRC qw(crc16);

my $msg = <>;  # Input message
chomp $msg;    # Chomp endline

# If message longer that 160 characters
if (length ($msg) > 160) {
	# Trim it!
	$msg .= substr ($msg, 0, 160);
}

# Calc sing: hex crc16 of crc16 of message
my $hex = sprintf("%X", crc16 ($msg));

# Output
say $msg;
say $hex;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
