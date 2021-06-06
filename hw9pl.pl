#!/usr/bin/perl
open(FILE,"hw9score");
@array = <FILE>;
close(FILE);
$count = 0;
foreach $line (@array){
	chomp($line);
	if($count == 0){
		print $line, "\t총점\t평균\n";
	}
	else{
		@arr = split(/\t/, $line);
		$sum = 0;
		for($i = 2; $i<=scalar(@arr); $i++){
			$sum += @arr[$i];
			@sumarr[$i] += @arr[$i];
		}
		print $line, $size,"\t" ,$sum, "\t",($sum/(scalar(@arr)-2)), "\n";
	}
	$count++;
}
print "\t\t";
for($j = 2; $j<=scalar(@sumarr)-2; $j++){
	print @sumarr[$j]/(scalar(@array)-1), "\t";
}
print "\n";
