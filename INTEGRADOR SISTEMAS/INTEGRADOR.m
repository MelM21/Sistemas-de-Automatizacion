k=3; %para la ganancia
[tm_num,tm_den]=pade(2,1);
%Tfg_zeros=[]; 
%Tfg_polos=[-1/2 -1/5];
G_num=[1];
G_den=[10 7 1];

%Tfh_zeros=[];
%Tfh_polos=[-2];
H_num=[1];
H_den=[1 2];


G=tf(G_num,G_den)*tf(tm_num,tm_den)*3;
H=tf(H_num,H_den);


HLC=G/(1+H*G);

HLC.den
HLC.num
