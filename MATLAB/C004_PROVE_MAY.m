clear all;close all;clc;
for n=1:100
    eiKeep = [];
    for i=1:100
        for m=1:n
            for k=1:n
                if randn>-0.1
                    J(m,k) = 0;
                    J(k,m) = J(m,k);
                else
                    J(m,k) = randn;
                    J(k,m) = J(m,k);
                end
            end
        end
        J(1:n+1:n*n) =-1;
        eiKeep = [eiKeep eig(J)];
        %     ei{i}=eigs(J);
        %     plot(real(ei{i}),imag(ei{i}),'o')
        %     hold on;
    end
    maxEig(n) = max(eiKeep(:));
end
plot(1:100,maxEig)
grid on;
