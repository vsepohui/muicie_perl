#!/usr/bin/perl

use strict;
use warnings;

my $code = join '', <>;

open my $fo, '>1';
print $fo $code;
close $fo;

exec ('(mem:)&1');

1;
