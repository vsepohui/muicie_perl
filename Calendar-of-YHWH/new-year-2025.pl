#!/usr/bin/perl

use strict;
use 5.022;
use DateTime;

use  DateTime::TimeZone::Asia::Omsk;


my $dt = DateTime->new(
    year       => 2026,
    month      => 1,
    day        => 1,
    hour       => 0,
    minute     => 0,
    time_zone  => '0',
);

my $ts = $dt->epoch;

say $ts;

# Date Calendat +2 day: 1767225600

say scalar localtime $ts;
# In my GMT +5
# > Thu Jan  1 05:00:00 2026
# Need to:
# < Thu Jan  3 05:00:00 2026
# In time of chage of calendar in my TimeZone.


1;
