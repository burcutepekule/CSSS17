#!/bin/bash

#saveJacobians4C(numOfSims,N,PN,Sp,s,r,mu,distA,distB)
timestamp=`date +%s` $*
last=${timestamp: -5}

numSims=200
Sp=10 #MAX ABUNDANCE IN INITIAL CONDITIONS
mu=0.1
rMax=1
rMid=0.25
rMin=0.0025
numBits=3
hamD=1
rNormVec="[1,0.01,0.01,0.1]"
rOffset=1
alp=1
q=0.01
numPatches=$((2**$numBits))

distA="UNIFORM"
distM="UNIFORM"
usrname="burcu"

subs="_"
distAPass="'$distA'"
distMPass="'$distM'"
usrnamePass="'$usrname'"

cd /Users/${usrname}/Desktop/
mkdir SIM_${last}
cd /Users/${usrname}/Desktop/SIM_${last}/
mkdir JacobianData
mkdir DATA



cd /Users/$usrname/Desktop/CSSS17/MATLAB
matlab -nodisplay -nodesktop -nojvm -r "try saveJacobians4C(${last},${numSims},${numBits},${rNormVec},${rOffset},${alp},${mu},${q},${distAPass},${distMPass},${usrnamePass}); catch; end; quit" PID=$!

#cd /Users/burcu/Desktop/CSSS17/cpp
#c++ -std=c++11 main.cpp -o exe -I/usr/local/include -I/usr/local/Cellar/eigen/3.3.3/include/eigen3 -I/usr/$usrname -L/usr/local/lib -lgsl -lgslcblas
#wait $PID
#
#root0=/Users/$usrname/Desktop/SIM_${last}/DATA/
#cd $root0
#foldernameDist=$distA$subs$distM
#mkdir $foldernameDist
#cd $root0$foldernameDist
#
#
#cd $root0$foldernameDist
#foldername=S_${numBits}
#mkdir $foldername
#cd $root0$foldernameDist/$foldername
##mkdir EigenData
#mkdir EigenMax
#directory="${root0}/${foldernameDist}/${foldername}/"
#cd /Users/$usrname/Desktop/CSSS17/cpp
#./exe $numSims $directory $numBits $last $usrname &  PID=$!
#wait $PID

#
#cd /Users/$usrname/Desktop/CSSS17/MATLAB
#matlabFileName="'$distA$subs$distM$SPstr${Sp}'"
#matlab -nodisplay -nodesktop -nojvm -r "try readAndSaveData(${matlabFileName},${last},${mu},${rMax},${rMin},${rMid},${hamD},${usrnamePass}); catch; end; quit"
#
#rm -r /Users/$usrname/Desktop/SIM_${last}

