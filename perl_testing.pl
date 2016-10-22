#!/usr/bin/perl
use strict;             #automatically kill the program when encountered
use warnings;           #give warnings


# --Perl language doesn't have main() loop

print "Hello World! \n";

#perl has 3 main variable types: Scalar, array, hashes
# --scalar = single value
# --scalar can be any dataype, using "my" for declare variable
# --scalar starts at $

my $name = "Tran Tran";
my $age = 20;

print "My name is $name and I am $age years old \n";

# --array is a group of variables
# --array starts ar @
my @family = ("father", "mother", "bro", "me", "cousin", "grandma");
my @number = (60, 55, 25, 60, 80, 100, 500);

#call a variable in array is the same as C++, count [0], [1], [2]
#call 1 variable, use $
print $family[3], "\n";            #give 'me'     
print $number[4], "\n";            #give 80
print $number[0], "\n";            #give 6o
print "My family anchor is my $family[0] and he is $number[3] years old \n";

#call multiple variables, use @
print @number[0,3,5], "\n";        #give 60, 60, 100

#call the last element in the array using @#
print $number[$#number], "\n";     #give 500

#call a list of variables - it's called "array slice"
print @family [2..$#family], "\n";      #give "bro", "me", "cousin", "grandma"
print @family [0..$#family-4], "\n";    #give "father", "mother"



my @sort = sort @family;
my @backwards = reverse @number;

print $sort;
print $backwards;


