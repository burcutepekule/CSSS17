function [ J ] = insertJ_opt(J,N,PN,X_in,A_in,M_in)
% THIS FUCKER TAKES TIME
for i=1:N
    for j=1:N
        for k=1:PN
            J=subs(J,['a' num2str(i) num2str(j) '_' num2str(k)],A_in(i,j,k));
        end
    end
end

for i=1:N
    for j=1:PN
        for k=1:PN
            J=subs(J,['m' num2str(i)  '_' num2str(j) num2str(k)],M_in(i,j,k));
        end
    end
end

for i=1:N
    for j=1:PN
            J=subs(J,['x' num2str(i)  '_' num2str(j)],X_in(i,j));
    end
end

end

