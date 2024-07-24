#!/usr/bin/perl 
use warnings;
use strict;

my $tag = `git tag`;
my @tags = split(/\n/, $tag);


