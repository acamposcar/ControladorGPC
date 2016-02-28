function [ A ] = Calculo_A( a,delta,Ts )
atf=tf(a,1,Ts);
deltatf=tf(delta,1,Ts);
Atf=deltatf*atf;
A=Atf.num{1,1};
end

