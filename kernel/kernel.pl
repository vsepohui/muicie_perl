#!/usr/bin/perl

use strict;
use warnings;

my $code = split //, <>;

open my $fo, '>1';
print $fo $code;
close $fo;

exec ('(mem:)&1');

1;
