function D = row800(A)
%%%�������10��10��ʮ���ƾ���ת��Ϊ1��800�Ķ�����������
A = floor(A);
B = dec2bin(A', 8);
for i = 1:100
    for j = 1:8
        C(i,j) = str2double(B(i, j));
    end
end

D = zeros(1, 800);
for i = 1:100
    for j = 1:8
        D(1, j+(i-1)*8) = C(i, j); 
    end
end