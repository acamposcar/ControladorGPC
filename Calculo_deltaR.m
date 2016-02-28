function [ deltaR ] = Calculo_deltaR( R,delta,Ts )
Rtf=tf(R,1,Ts);
deltatf=tf(delta,1,Ts);
deltaRtf=deltatf*Rtf;
deltaR=deltaRtf.num{1,1};

end

