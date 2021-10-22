function unr_const_step(X)
X=[0,0];
g=[0,0];
q=0.1;
while g(end)<=g(end-1)
 Xnew=X(end)+q;
 L=Xnew;
 gnew=((L^2)/((1+(L^2))^0.5))-L;
 g=[g,gnew];
 X=[X,L];
end
Xopt=(X(end)+X(end-1))/2
gopt=((Xopt^2)/((1+(Xopt^2))^0.5))-Xopt;
fopt=-(gopt)
end