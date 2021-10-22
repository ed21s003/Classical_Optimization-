%Xs=Starting point, Xf=Final point, a=percentage accuracy
function Exhaustive_search(Xs,Xf,a)
L0=Xf-Xs;
t=(100/a)-1;
n=ceil(t);
d=L0/n;
X=[0,Xs];
P=((Xs^2)/((1+(Xs^2))^.5))-Xs;
g=[0,P];
while g(end)<=g(end-1)
    B=X(end)+d;
    gnew=((B^2)/((1+(B^2))^.5))-B;
    g=[g,gnew];
    X=[X,B];
end
Xopt=(X(end)+X(end-1))/2
gopt=((Xopt^2)/((1+(Xopt^2))^.5))-Xopt;
fopt=-gopt
end