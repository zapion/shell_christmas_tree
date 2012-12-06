#!/bin/bash
max=19
mid=`expr $max / 2`

draw_leaves() {
local start=$1
local end=$2
for (( i=$start; i<=$end; i++ ));
do
    # print blank
    for (( j=1; j<=`expr $mid - $i`; j++ ));
    do
        printf " ";
    done
    for (( j=1; j<=`expr $i + $i + 1`; j++ ));
    do
        printf "*";
    done
    printf "\n";
done
}

draw_trunk() {
local height=$1
local width=$2
for (( i=0;i<$height;i++ ))
do
for (( j=0;j<`expr $mid - $width + 1`; j++ ))
do
    printf " "
done
    
for (( j=0; j<`expr $width + $width - 1`; j++ ))
do
    printf "*"
done
printf "\n"
done

}

draw_leaves 0 3
draw_leaves 2 5
draw_leaves 4 9
draw_trunk 5 2

