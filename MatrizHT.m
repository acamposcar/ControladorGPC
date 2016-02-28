function [HT] = MatrizHT(p,T)
nt=length(T);
HT=zeros(p,nt);
HT(1,:)=T; %Primera fila
for i=1:p-1
  HT(i+1,:)=[T(i+1:end) zeros(1,i)];
end

end

