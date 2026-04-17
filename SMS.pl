#!/usr/bin/perl

use strict;
use warnings;

use Digest::CRC qw(crc16);

my $msg = <>;
chomp $msg;

if (length ($msg) > 160) {
	$msg .= substr ($msg, 0, 160);
}

my $hex = sprintf("%X", crc16 ($msg));

say $msg;
say $hex;

1;

# by Tovarisch Trunaev, 2026, Russia, Uray
