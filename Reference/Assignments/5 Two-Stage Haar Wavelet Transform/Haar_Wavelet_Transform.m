clc;
clear;

str = 'HUANG YONGQIAN G';
ascii = double(str);

ascii_r = reshape(ascii,4,4);
ascii_r = ascii_r';

haar_r = ascii_r;
haar_rc = ascii_r;

for i=1:4
    for j=1:2
       haar_r(i,j) = (ascii_r(i,2*j-1) + ascii_r(i,2*j))/2;
       haar_r(i,j+2) = (ascii_r(i,2*j-1) - ascii_r(i,2*j))/2;
    end
end

for i=1:4
    for j=1:2
       haar_rc(j,i) = (haar_r(2*j-1,i) + haar_r(2*j,i))/2;
       haar_rc(j+2,i) = (haar_r(2*j-1,i) - haar_r(2*j,i))/2;
    end
end

haar_r2 = haar_rc;

for i=1:2
    for j=1:1
       haar_r2(i,j) = (haar_rc(i,2*j-1) + haar_rc(i,2*j))/2;
       haar_r2(i,j+1) = (haar_rc(i,2*j-1) - haar_rc(i,2*j))/2;
    end
end

haar_rc2 = haar_r2;
for i=1:2
    for j=1:1
       haar_rc2(j,i) = (haar_r2(2*j-1,i) + haar_r2(2*j,i))/2;
       haar_rc2(j+1,i) = (haar_r2(2*j-1,i) - haar_r2(2*j,i))/2;
    end
end
