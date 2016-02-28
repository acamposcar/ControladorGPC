function [Hb] = MatrizHb(p,b)
m=length(b);
Hb=zeros(p,m-1);

for i=1:m
  Hb(i,:)=[b(i+1:end) zeros(1,i-1)];
end

end

