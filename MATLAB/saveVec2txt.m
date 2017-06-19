function [  ] = saveVec2txt(V,filename)
fid = fopen(filename,'wt');
for i = 1:length(V)
    if (double(ischar(V{i}))==1)
            fprintf(fid,'%s ',V{i});
    else
            fprintf(fid,'%g ',V{i});
    end
end
fclose(fid);
end