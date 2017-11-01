#!/usr/bin/perl -w

my $RNA = "TTAGCTGATTACGTA";

print($RNA, "\n");

$RNA =~ tr/ATCG/TAGC/;
print($RNA, "\n");

my $reverse_compliment = reverse $RNA;
print($reverse_compliment, "\n");

exit();
