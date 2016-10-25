#!/usr/bin/perl
use strict;             #automatically kill the program when encountered
use warnings;           #give warnings

print"\n---------- FILES AND INPUT/OUTPUT ----------\n";
#follow 3 steps: OPEN - RUN - CLOSE
#using open() function
#put the input.txt file in the folder

#STEP 1: OPEN 
#just check if it can be opened, not exist (not exist, no effect)
#open input file using "<" using $! to kill the program (no $! is fine)
open(my $in, "<", "input.txt") or die "Can't open the input.txt file $!";

#open output file using ">"
open(my $out, ">", "output.txt") or die "Can't open the output.txt file";

#open log file using ">>"
open(my $log, ">>", "my.log") or die "Can't open the my.log file $!";


#STEP 2: RUN 
#run the file (show on command)
 while (<$in>) {     # using $_ = run all line
     print "Just read in this line: $_";
 }


#STEP 3: CLOSE
#close the file
close $in or die "$in: $!"



#  print  "This is your final warning.\n";



