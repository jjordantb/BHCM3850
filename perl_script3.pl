#!/usr/bin/perl -w
use constant {true => 1, false => 0};

# Open the file, at the path $dnaFileName
# read the contents of file into an array @dna
# remove all new line chracters from the strings
# print out each element of the array

my $dnaFileName = "testsequence1.txt";
open(DNAFILE, $dnaFileName);
@dna = <DNAFILE>;
print(@dna);

#chomp(@dna);
print($dna[0], $dna[1], "\n");

#other

#if (true) {
  #print("TRUE");
#}
