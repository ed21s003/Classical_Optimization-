function internal_halving_method(Xs,Xf,a)
Lo=Xs-Xf;
b=50/a;
b'==(((2*log(b))/(log(2)))+1);
t=ceil(b');
if ceil(t/2)==t/2
    n=t+1
else
    n=t
end
Xb=Xs;
Xe=Xf;
z=(n-1)/2;
for i=1:z
    p=Xb+(Lo/4);
    q=Xb+(Lo/2);
    r=Xb+((3*Lo)/4);
    g1=((p^2)/((1+(p^2))^0.5))-p;
    g2=((q^2)/((1+(q^2))^0.5))-q;
    g3=((r^2)/((1+(r^2))^0.5))-r;
    if (g1<g2)&&(g2<g3)
        Xe=q;
    elseif (g1>g2)&&(g2>g3)
        Xb=q;
    else (g1>g2)&&(g2<g3);
        Xb=p;
        Xe=r;
    end
    Lo=(Xe-Xb);
end
Xopt=(Xe+Xb)/2
gopt=((Xopt^2)/((1+(Xopt^2))^0.5))-Xopt;
fopt=-(gopt)
end