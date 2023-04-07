syms x;
%Setting x as a symbol
a=input('Enter first guess = ');
b=input('Enter second guess = ');
i=input('Enter iterations = ');
e=0.0001;
y=x^3-2*x-3;
fa=subs(y,x,a);
fb=subs(y,x,b);
 
if(fa*fb)>0
    disp('Error :: ');
else
    fprintf('\n\n a\t\t\t b\t\t\t c\t\t\t\t fc\n\n')
   c=(a+b)/2;
    fc=subs(y,x,c);
    for j=1:i
        ar(j)=c;
    fprintf('%f\t %f\t %f\t %f\t\n', a, b, c, fc)
 
    if(fa*fc)<0
        b=c;
         fb=subs(y,x,c);
    else
            a=c;
            fa=subs(y,x,c);
    end
        c=(a+b)/2;
    fc=subs(y,x,c);
    plot(ar);
    end
    fprintf('\nRoot = %f\n', c);
end