#!/usr/local/bin/perl

use diagnostics;
use strict;
use warnings;
use Digest::Haval256;

my $string1 = "This is a string.";
my $string2 = "This is another string.";
my $string3 = "This is a string.This is another string.";

my $haval = new Digest::Haval256;
print "hash size=", $haval->hashsize, "\n";
print "number of rounds=", $haval->rounds, "\n\n";

$haval->add($string1);
my $digest = $haval->hexdigest();
print "Hash string1 only\n";
print "$digest\n\n";

my $haval2 = new Digest::Haval256;
$haval2->add($string1, $string2);
my $digest2 = $haval2->hexdigest();
print "Hash string1 and then hash string2\n";
print "$digest2\n\n";

my $haval3 = new Digest::Haval256;
$haval3->add($string3);
print "Hash the two concatenated strings\n";
my $digest3 = $haval3->hexdigest();
print "$digest3\n";

