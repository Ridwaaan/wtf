#!/usr/bin/perl -w

use strict;

my ($menu1, $vegmenu, $nonvegmenu);

$menu1 = [
         "------What The Food!-------\nPlease choose your preference",
         
         [ "Vegeterian", sub{ &menu( $vegmenu )} ],
         [ "Non-Vegeterian", sub{ &menu( $nonvegmenu )} ],
         [ "Quit", sub {exit;} ],
     ];

$vegmenu = [
         "Please choose a cuisine and I'll suggest you a\n suitable Vegeterian dish from the cuisine",
         [ "Indian", \&veg_indian ],
         [ "Chinese", \&veg_chinese ],
         [ "Italian", \&veg_italian ],
         [ "French", \&veg_french ],
         [ "Quit to main menu", sub{ &menu( $menu1 )} ],
         
     ];

$nonvegmenu = [
         "Please choose a cuisine and I'll suggest you a\n suitable Non-Vegeterian dish from the cuisine",
         [ "Indian", \&nonveg_indian ],
         [ "Chinese", \&nonveg_chinese ],
         [ "Italian", \&nonveg_italian ],
         [ "French", \&nonveg_french ],
         [ "Quit to main menu", sub{ &menu( $menu1 )} ],
     ];

##MENU ROUTINE
sub menu {
    my $m = shift;
    my $choice;
    
    while (1) {
    print "$m->[0]:\n";
    print map { "\t$_. $m->[$_][0]\n" } (1..$#$m);
    print "> ";
    chomp ($choice = <>);
    last if ( ($choice > 0) && ($choice <= $#$m ));
    print "You chose '$choice'.  That is not a valid option.\n\n";
    }
    &{$m->[$choice][1]};
}

sub veg_indian {

my $file = 'vegindian.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}


sub veg_chinese {

my $file = 'vegchinese.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}

sub veg_italian {

my $file = 'vegitalian.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}

sub veg_french {

my $file = 'vegfrench.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}

##NON-VEG STARTS HERE

sub nonveg_indian {

my $file = 'nonvegindian.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}


sub nonveg_chinese {

my $file = 'nonvegchinese.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}

sub nonveg_italian {

my $file = 'nonvegitalian.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}

sub nonveg_french {

my $file = 'nonvegfrench.txt';
open FILE, "<$file" or die "Could not open $file: $!\n";
my @array=<FILE>;
close FILE;
my $randomline=$array[rand @array];
chop($randomline);
print "You should probably eat $randomline today\n"

}


## TEST
&menu($menu1);
system("pause");
