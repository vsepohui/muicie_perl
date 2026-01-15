#!/usr/bin/perl

use 5.022;
use strict;
use warnings;
use Encode qw(encode decode);

my $s = join "\n", <>;
say encode('ascii', decode('UTF-8', $s));
