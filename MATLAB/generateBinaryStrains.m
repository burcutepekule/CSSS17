function [ x ] = generateBinaryStrains(numBits)
x =zeros(2^numBits,3);
for i=1:2^numBits
    strain = dec2bin(i-1,numBits);
    for k=1:numBits
        x(i,k) = str2double(strain(k));
    end
end
end

