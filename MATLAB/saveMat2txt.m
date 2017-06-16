function [  ] = saveMat2txt(A, filename)
fid = fopen(filename,'wt');
for i = 1:size(A,1)
    fprintf(fid,'%g, ',A(i,:));
    fprintf(fid,'\n');
end
fclose(fid)

end