function [Cb] = MatrizCb(p,b)
Cb=zeros(p);
columna=zeros(p,1);
b=[b zeros(1,p)];
for i=1:p
columna(i)=b(i);
end
Cb(:,1)=columna;
for i=1:p-1
    Cb(:,i+1)=[zeros(i,1);columna(1:p-i)];
end
end

