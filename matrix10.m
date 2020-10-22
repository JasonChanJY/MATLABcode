function Matrix10 = matrix10(Input_Matrix)
%%%将输入的800位二进制数转化为[0,255]的十进制数，并重新排列成10×10的矩阵

%%%初始化
M_Matrix = zeros(size(800/8, 8));
Str_Matrix = char(zeros(size(800/8, 8)));
Matrix10 = zeros(10);

for i = 1:800/8
    for j = 1:8
        M_Matrix(i, j) = Input_Matrix(j+(i-1)*8); %Input_Matrix为输入的二进制数据，M_Matrix为中间状态矩阵
    end
end
M_Matrix = num2str(M_Matrix);
M_Matrix(isspace(M_Matrix)) = [];  %转化为字符串
for i = 1:800/8
    for j = 1:8
        Str_Matrix(i, j) = M_Matrix(j+(i-1)*8); %重新排列成256×8的形式
    end
end
K = bin2dec(Str_Matrix); %转化为十进制

for i = 1:10
    for j = 1:10
        Matrix10(i, j) = K(j+(i-1)*10); %输出
    end
end
