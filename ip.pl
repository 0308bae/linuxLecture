#!/usr/bin/perl
$ip = <STDIN>;
if($ip =~ /(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})/){
        print "is ip\n";
}
else{
        print "is not ip\n";
}

