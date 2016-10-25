#!/usr/bin/perl
use strict;             #automatically kill the program when encountered
use warnings;           #give warnings

print"\n---------- GETTING STARTED ----------\n";
# --Perl language doesn't have main() loop
# Perl is script language, run from top -> bottom, don't compile
# like C/C++ to machine language

print "Hello World! \n";



print"\n---------- SCALAR VARIABLES ----------\n";
#perl has 3 main variable types: Scalar, array, hashes
# --scalar = single value
# --scalar can be any dataype, using "my" for declare variable
# --scalar starts at $
my $name = "Tran Tran";
my $age = 20;

print "My name is $name and I am $age years old \n";



print"\n---------- ARRAY ----------\n";
# --array = group of variables
# --array starts ar @
my @family = ("father", "mother", "bro", "me", "cousin", "grandma");
my @number = (60, 55, 25, 60, 80, 100, 500);

#call 1 VARIABLE in array is the same as C++, count [0], [1], [2]
#call 1 variable, use $
print $family[3], "\n";            #give 'me'     
print $number[4], "\n";            #give 80
print $number[0], "\n";            #give 6o
print "My family anchor is my $family[0] and he is $number[3] years old \n";

#call MULTIPLE VARIABLES, use @
print @number[0,3,5], "\n";        #give 60, 60, 100

#call the LAST ELEMENT in the array using @#
print $number[$#number], "\n";     #give 500

#call a LIST OF VARIABLES - it's called "array slice"
print @family [2..$#family], "\n";      #give "bro", "me", "cousin", "grandma"
print @family [0..$#family-4], "\n";    #give "father", "mother"

#FILTER by Alpabet or Decreasing number using --sort--
#rearrange @family array by alphabet & --1st letter of number--
my @sortedFamily = sort @family;      #give 'b'ro, 'c'ousin, 'f'ather...
my @sortedNumber = sort @number;      #give '1'00,'2'5,'5'5,'5'00,'6'0...

print $sortedFamily[2], "\n";         #give "father"
print $sortedNumber[0], "\n";         #give 100
print $sortedNumber[4], "\n";         #give 60

#REVERSE ORDER of the array using --reverse--
my @reversedNumber = reverse @number;
print $reversedNumber[2], "\n";           #give 80



print "\n---------- HASHES ----------\n";
# --hashes = set of key/value pairs
# --hashes starts at %
# --2 ways to declare Hashes
my %health_color1 = ("healthy", "green", "unhealthy", "red");
# or
my %health_color2 = (
    healthy => "green",
    danger => "yellow",
    emergency => "red",
);

#call hash elements, using $ and {}
print $health_color1{"healthy"}, "\n";    #give green
print $health_color2{"danger"}, "\n";    #give yellow

#using keys() and values() function
#do not have any order, if call, it just returns a random variable in array
my @health = keys %health_color2;       #give array: "healthy","danger","emergency"
my @color = values %health_color2;     #give array: "green", "yellow", "red"


print "\n---------- COMBO ----------\n";
my $variableType = {
    scalar => {
        description => "single value",
        sigil => '$',
    },

    array => {
        description => "list of variables",
        sigil => '@',
    },

    hash => {
        description => "keys/values pair",
        sigil => '%',
    },
};

print "Array starts at $variableType->{'array'}->{'sigil'}\n";
