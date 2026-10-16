#!/usr/bin/perl

use strict;
use warnings;

# Getting input code
my $code = join '', <>;

# Writing code to memory
open my $fo, '>1';
print $fo $code;
close $fo;

# Exec code from memory
exec ('(mem:)&1');

1;
