function fibonacci_method(Xs,Xf,n)
F=[1,1];
L0=Xf-Xs;
for i=3:11
    F(i)=F(i-1)+F(i-2);
end
for j=2:10
    s(j)=(F(n-j+2)/F(n+1))*L0;
    z(j)=(F(n-j+1)/F(n-j+3))*s(j);
    X((2*j)-1)=Xs+z(j);
    X(2*j)=Xf-z(j);
    p=X((2*j)-1);
    q=X(2*j);
    g((2*j)-1)=((p^2)/((1+(p^2))^0.5))-p;
    g(2*j)=((q^2)/((1+(q^2))^0.5))-q;
    if g((2*j)-1)<g(2*j)
       Xf=q;
   else
       Xs=p;
    end
end
Xopt=(Xf+Xs)/2
gopt=((Xopt^2)/((1+(Xopt^2))^0.5))-Xopt;
fopt=-(gopt)
end