function Golden_section(Xs,Xf,n)
L0=Xf-Xs;
for i=1:n
    Z(i+1)=((1/1.618)^(i+1))*L0;
 X((2*i)-1)=Xs+Z(i+1);
 X(2*i)=Xf-Z(i+1);
 p=X((2*i)-1);
 q=X(2*i);
 g((2*i)-1)=((p^2)/((1+(p^2))^0.5))-p;
 g(2*i)=((q^2)/((1+(q^2))^0.5))-q;
 if g((2*i)-1)<g(2*i)
       Xf=q;
   else
       Xs=p;
 end
end
Xopt=(Xf+Xs)/2
gopt=((Xopt^2)/((1+(Xopt^2))^0.5))-Xopt;
fopt=-(gopt)
end