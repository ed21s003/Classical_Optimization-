%Xs=Starting point, Xf=Final point, a=percentage accuracy, d=perturbation
%from center
function Dichotomous_Search(Xs,Xf,a,d)
L0=Xf-Xs;
z=d/L0;
c=a/50;
b=(1-z)/(c-z);
b'==2*(log(b)/log(2));
t=ceil(b');
if ceil(t/2)==t/2
    n=t;
else
    n=t+1;
end
Xb=Xs;
Xe=Xf;
for i=1:(n/2)
    Y((2*i)-1)=Xb+(L0-d)/2;
    Y(2*i)=Xb+(L0+d)/2;
    p=Y((2*i)-1);
    q=Y(2*i);
   g((2*i)-1)=((p^2)/((1+(p^2))^0.5))-p;
   g(2*i)=((q^2)/((1+(q^2))^0.5))-q;
   if g((2*i)-1)<g(2*i)
       Xe=q;
   else
       Xb=p;
   end
   L0=Xe-Xb;
end
Xopt=(Xe+Xb)/2
gopt=((Xopt^2)/((1+(Xopt^2))^0.5))-Xopt;
fopt=-(gopt)
end
