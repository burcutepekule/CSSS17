#!/bin/bash

#saveJacobians4C(numOfSims,N,PN,Sp,s,r,mu,distA,distB)


numSims=100
mu=0.1
numBits=3
rNormVec="[1,1,1,1]"
rOffset=0
alp=1
#q=0
numPatches=$((2**$numBits))
tms=4

#distA="UNIFORM"
#distM="ZERO"
usrname="burcu"
subs="_"
usrnamePass="'$usrname'"

arrA=("ZERO")
arrM=("UNIFORM")
qArr=(0 0.01 0.02 0.05 0.1)

for distA in "${arrA[@]}"
do
for distM in "${arrM[@]}"
do
for q in ${qArr[*]}
do

#timestamp=`date +%s` $*
#last=${timestamp: -4}
last=0

distAPass="'$distA'"
distMPass="'$distM'"

cd /Users/${usrname}/Desktop/
mkdir SIM_${last}
cd /Users/${usrname}/Desktop/SIM_${last}/
mkdir JacobianData
mkdir DATA

cd /Users/$usrname/Desktop/CSSS17/MATLAB
matlab -nodisplay -nodesktop -nojvm -r "try saveJacobians4C(${last},${numSims},${numBits},${rNormVec},${rOffset},${alp},${mu},${q},${distAPass},${distMPass},${usrnamePass}); catch; end; quit"

cd /Users/burcu/Desktop/CSSS17/cpp
c++ -std=c++11 main.cpp -o exe -I/usr/local/include -I/usr/local/Cellar/eigen/3.3.3/include/eigen3 -I/usr/$usrname -L/usr/local/lib -lgsl -lgslcblas
root0=/Users/$usrname/Desktop/SIM_${last}/DATA/
cd $root0
foldernameDist=$distA$subs$distM
mkdir $foldernameDist
cd $root0$foldernameDist

foldername=S_${numBits}
mkdir $foldername
cd $root0$foldernameDist/$foldername
#mkdir EigenData
mkdir EigenMax
directory="${root0}/${foldernameDist}/${foldername}/"
cd /Users/$usrname/Desktop/CSSS17/cpp
./exe $numSims $directory $numBits $last $usrname &  PID=$!
wait $PID

#
cd /Users/$usrname/Desktop/CSSS17/MATLAB
matlabFileName="'$distA$subs$distM$SPstr${Sp}'"
matlab -nodisplay -nodesktop -nojvm -r "try readAndSaveData(${matlabFileName},${last},${rNormVec},${rOffset},${alp},${mu},${q},${usrnamePass}); catch; end; quit"
#
rm -r /Users/$usrname/Desktop/SIM_${last}
done
done
done

