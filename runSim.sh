#!/bin/bash

#saveJacobians4C(numOfSims,N,PN,Sp,s,r,mu,distA,distB)
timestamp=`date +%s` $*
last=${timestamp: -6}

numSims=10
Sp=15
s=1
r=1
mu=0.1
#arrSpecies=(2 3 4 5 6 7 8 9 10 11 12 13 14 15)
#arrPatches=(2 3 4 5 6 7 8 9 10 11 12 13 14 15)
arrSpecies=(2 3)
arrPatches=(2)
distA="UNIFORM"
distM="UNIFORM"
subs="_"
SPstr="_SP_"
distAPass="'$distA'"
distMPass="'$distM'"


cd /Users/burcu/Desktop/
mkdir SIM_${last}
cd /Users/burcu/Desktop/SIM_${last}/
mkdir JacobianData
mkdir DATA

cd /Users/burcu/Desktop/CSSS17/MATLAB
for species in ${arrSpecies[*]}
do
for patch in ${arrPatches[*]}
do
matlab -nodisplay -nodesktop -nojvm -r "try saveJacobians4C(${last},${numSims},${species},${patch},${Sp},${s},${r},${mu},${distAPass},${distMPass}); catch; end; quit"
done
done


cd /Users/burcu/Desktop/CSSS17/C++/conjStability/conjStability
c++ -std=c++11 main.cpp -o exe -I/usr/local/include -L/usr/local/lib -lgsl -lgslcblas

root0=/Users/burcu/Desktop/SIM_${last}/DATA/
cd $root0
foldernameDist=$distA$subs$distM$SPstr${Sp}
mkdir $foldernameDist
cd $root0$foldernameDist

for species in ${arrSpecies[*]}
do
for patch in ${arrPatches[*]}
do
#root1=/Users/burcu/Desktop/CSSS17/DATA/$distA_$distM/
#cd $root1
cd $root0$foldernameDist
foldername=S_${species}_P_${patch}
mkdir $foldername
cd $root0$foldernameDist/$foldername
mkdir EigenData
mkdir EigenMax
directory="${root0}/${foldernameDist}/${foldername}/"
cd /Users/burcu/Desktop/CSSS17/C++/conjStability/conjStability
./exe $numSims $directory $patch $species $Sp $s $r $mu $last &  PID=$!
wait $PID
done
done

cd /Users/burcu/Desktop/CSSS17/MATLAB
matlabFileName="'$distA$subs$distM$SPstr${Sp}'"
matlab -nodisplay -nodesktop -nojvm -r "try readAndSaveData(${matlabFileName},${last},${s},${r},${mu}); catch; end; quit"

rm -r /Users/burcu/Desktop/SIM_${last}

