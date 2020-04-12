function [xv,it]=newtonsys(x,f,jf,tol)
it=0; xv=x;
fr=feval(f,xv);
while norm(fr)>tol
    jr=feval(jf,xv);
    xv1=xv-jr\fr;
    xv=xv1;
    fr=feval(f,xv);
    it=it+1;
end;
function f=f1(v)
x=v(1);
y=v(2);
f=zeros(2,1);
f(1)=x^2+y^2-2;
f(2)=x^2-y;
function f=f2(v)

x=v(1);
y=v(2);
f=zeros(2,2);
f(1,:)=[2*x,2*y];
f(2,:)=[2*x,-1];


