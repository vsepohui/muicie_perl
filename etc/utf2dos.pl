#!/usr/bin/perl

use 5.022;
use strict;
use warnings;
use Encode qw(encode);

my $s = join "\n", <>;
say encode('ascii', $s);
