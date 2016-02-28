clear
%% PERIODO DE MUESTREO
Ts=0.1;

%% POLINOMIOS
delta=[1 -1];
a=[1 -1.8 0.81];
b=[0.0100 0.0030];

A=conv(a,delta);

%T=[40:1:60];

n=length(A);
m=length(b);
%nt=length(T);

%% HORIZONTE DE PREDICCIÓN Y DE CONTROL

p=10;
c=3;

%% ALFA Y LAMBDA
alfa=1;
lambda=3;

alfa=alfa*eye(p);
lambda=lambda*eye(c);

%% CONSTRUCCION DE LAS MATRICES
Ca=MatrizCA(p,A);
Cb=MatrizCb(p,b);
%CT=MatrizCT(p,T);
Ha=MatrizHA(p,A);
Hb=MatrizHb(p,b);
%HT=MatrizHT(p,T);

G=inv(Ca)*Cb; %pxp
G=G(:,1:c); %pxc
P=inv(Ca)*Hb;
Q=-inv(Ca)*Ha;
%% FILTRO

% CTP=CT*P;
% CTQ=CT*Q;
% 
% if m-1>=nt
%     HT=[HT zeros(p,(m-1)-nt)];
% elseif m-1<nt
%     CTP=[CT*P zeros(p, nt-(m-1))];
% end 
% if n>=nt
%     HT=[HT zeros(p, n-nt)];
% elseif n<nt
%     CTQ=[CT*Q zeros(p, n-nt)];
% end
% 
% Pf=CTP-G*HT;
% Qf=CTQ+HT;
%%

H=inv(G'*alfa*G+lambda)*G'*alfa;
F=sum(H(1,:));
h=H(1,:);
R=[1 h*P];
S=h*Q;
P=h; %Dudas
deltaR=conv(R,delta);

