function [CA] = MatrizCA(p,A)
CA=zeros(p);
columna=zeros(p,1);
A=[A zeros(1,p)];
for i=1:p-1
columna(i)=A(i);
end
CA(:,1)=columna;
for i=1:p-1
    CA(:,i+1)=[zeros(i,1);columna(1:p-i)];
end

end

