#!/usr/bin/perl
# About: 
# Auth : s-tomoki
# Init : @{@strftime('%Y/%m/%d')@}@

# use pragma and package
use strict;
use warnings;
use utf8;
use Getopt::Std;
use 5.010;

# const declaration
use constant TRUE => "1";
use constant FALSE => "0";

# variable declaration
my %opts = ();


# ========== sub routine ========== #

# ========== main routine ========== #

# get options
getopts("" => \%opts);

# check augments
die "Usage: $0 " if ($#ARGV != -1);
