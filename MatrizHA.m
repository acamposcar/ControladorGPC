function [HA] = MatrizHA(p,A)
A=A(2:end);
n=length(A);
HA=zeros(p,n);
HA(1,:)=A; %Primera fila
for i=1:n
  HA(i+1,:)=[A(i+1:end) zeros(1,i)];
end

end

