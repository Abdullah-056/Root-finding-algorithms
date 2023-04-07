clear all
clc
syms x;
i=1;
a=input('Enter first guess  =  ');
b=input('Enter 2nd gyess  =  ');
n=input('Enter Error  =  ');
y=x^3-2*x-3;
fa=subs(y,x,a);
fb=subs(y,x,b);
nt=(n*10)-n;
if(fa*fb)>0
    disp('Error! Improve coding  ');
else
    fprintf('\n\n a\t\t\t b\t\t\t c\t\t\t\t fc\n\n')
       c=(a+b)/2;
        fc=subs(y,x,c);
  while abs(fc)>nt
        ar(i)=c;
        fprintf('%f\t %f\t %f\t %f\t\n', a, b, c, fc)
        if(fa*fc)>0
            a=c;
           fa=subs(y,x,c);
        else
            b=c;
           fb=subs(y,x,c);
        end
      c=(a+b)/2;
         fc=subs(y,x,c);
         plot(ar);
         i=i+1;
    end
    fprintf('\nRoot is = %f\n', c);
end