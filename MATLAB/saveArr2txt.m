function [  ] = saveArr2txt(A,filename)
fid = fopen(filename,'wt');
Aarr = A(:)';
fprintf(fid,'\n');
for i = 1:length(Aarr)-1
    fprintf(fid,'%g ',Aarr(i));
    fprintf(fid,'\n');
end
fprintf(fid,'%g',Aarr(end));
fclose(fid);
end