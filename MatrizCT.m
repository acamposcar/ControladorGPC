function [CT] = MatrizCT(p,T)
CT=zeros(p);
columna=zeros(p,1);
columna(1,1)=1;
for i=1:p-1
columna(i+1)=T(i);
end
CT(:,1)=columna;
for i=1:p-1
    CT(:,i+1)=[zeros(i,1);columna(1:p-i)];
end
end

