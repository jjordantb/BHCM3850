#!/usr/bin/perl -w

# These imports allow for easier debug and provide useful information
# when something has gone wrong or been misstyped
use strict;
use warnings;

# Ensure proper use of script by making sure a file name was passed in
if ($ARGV[0] eq "") {
  # If file name has not been passed in print out a prompt of how to fix
  # and then exit
  print("You need to pass a file path in as an argument!\n");
  print("Example: perl assn_2.pl myFile.txt\n");
  exit();
}

# Open a file and store the handle in a varriable
# Outputs error if something goes wrong and quits
open(my $fileHandler, "<", $ARGV[0])
  or die "Could not open file \n";

my $masterString = ""; # Predefine a varriable to concatinate all lines into
# Iterate through all of the lines in the file storing each line in $row for use
while(my $row = <$fileHandler>) {
  chomp($row); # remove new line characters from the line
  $row =~ s/(\s+)|(\d)//g; # remove any numerical characters and spaces from the line
  $masterString = $masterString . $row; # add the line to the running total of file contents via concactination
}

# The file contents are now stored in $masterString and any noisy characters has been removed
$masterString =~ tr/atcg/tagc/; # converse the string with the appropriate nucleic acid
$masterString = reverse $masterString; # reverse the string

# Finally print the string for debugging
# output formatting can be done here
print $masterString . "\n";
