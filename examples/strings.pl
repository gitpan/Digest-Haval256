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

$haval->reset();
$haval->add($string1, $string2);
my $digest2 = $haval->hexdigest();
print "Hash string1 and then hash string2\n";
print "$digest2\n\n";

$haval->reset();
$haval->add($string3);
print "Hash the two concatenated strings\n";
my $digest3 = $haval->hexdigest();
print "$digest3\n";

