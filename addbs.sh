#!/bin/bash
r=0
for arg
do
	let r=$r+$arg
done
echo $r
