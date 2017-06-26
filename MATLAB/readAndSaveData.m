function [ ] = readAndSaveData(folderName,timeStamp,rNormVec,rOffset,alp,mu,q,usrname)
% folderName = 'uniform_uniform_SP_2';
directory=['/Users/' usrname '/Desktop/SIM_' num2str(timeStamp) '/DATA/' folderName '/'];
D = dir([directory,'/S*']);
bitsIndexVec = [];
for i=1:size(D,1)
    fileName = D(i).name;
    ss = []; pp=[];
    k = 3; %Start reading from character number 3
    nextChar = str2double(fileName(k));
    while(isnan(nextChar)==0)
        ss =[ss fileName(k)];
        k=k+1;
        if(length(fileName)>3)
            nextChar = str2double(fileName(k));
        else
            break
        end
    end
    bitsIndexVec = [bitsIndexVec str2double(ss)];
    %     k = k+3; %pass the characters _P_
    %     nextChar = str2double(fileName(k));
    %     while(isnan(nextChar)==0)
    %         pp =[pp fileName(k)];
    %         k=k+1;
    %         if(k<=size(fileName,2))
    %             nextChar = str2double(fileName(k));
    %         else
    %             break;
    %         end
    %     end
    %     patchesIndexVec = [patchesIndexVec str2double(pp)];
end
bits   = unique(bitsIndexVec);
% go to one folder to calculate the simulation size
D = dir([directory,'/S_' num2str(bits(1)) '/EigenMax/*']);
simSize = size(D,1)-2; % subtract the number of hidden files which is 2
for m=1:simSize
    for i=1:length(bits)
        maxEig(i,m) = readTxtFile(['S_' num2str(bits(i)) '/EigenMax/Emax_' num2str(m-1)],directory);
    end
end

for i=1:length(bits)
    avgEig(i)=mean(maxEig(i,:));
end
file2save = ['DATA_' folderName '_MUT_' num2str(q*10000) '_E4'];
assignin('caller','rNormVec', rNormVec)
assignin('caller','rOffset', rOffset)
assignin('caller','alp', alp)
assignin('caller','mu', mu)
assignin('caller','q', q)
save(file2save)
end

