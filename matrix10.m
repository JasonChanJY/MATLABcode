function Matrix10 = matrix10(Input_Matrix)
%%%�������800λ��������ת��Ϊ[0,255]��ʮ�����������������г�10��10�ľ���

%%%��ʼ��
M_Matrix = zeros(size(800/8, 8));
Str_Matrix = char(zeros(size(800/8, 8)));
Matrix10 = zeros(10);

for i = 1:800/8
    for j = 1:8
        M_Matrix(i, j) = Input_Matrix(j+(i-1)*8); %Input_MatrixΪ����Ķ��������ݣ�M_MatrixΪ�м�״̬����
    end
end
M_Matrix = num2str(M_Matrix);
M_Matrix(isspace(M_Matrix)) = [];  %ת��Ϊ�ַ���
for i = 1:800/8
    for j = 1:8
        Str_Matrix(i, j) = M_Matrix(j+(i-1)*8); %�������г�256��8����ʽ
    end
end
K = bin2dec(Str_Matrix); %ת��Ϊʮ����

for i = 1:10
    for j = 1:10
        Matrix10(i, j) = K(j+(i-1)*10); %���
    end
end
