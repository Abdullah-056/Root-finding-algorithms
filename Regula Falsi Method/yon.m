syms x;
%Setting x as a symbol
a=input('Enter first guess = ');
b=input('Enter second guess = ');
e = input('Tolerable Error: ');
i=1;
y=x^3-2*x-3;
fa=subs(y,x,a);
fb=subs(y,x,b);
if fa*fb>0
    disp('Root does not lie between given intervals');
else
    c=a-(a-b)*fa/(fa-fb);
    fc=subs(y,x,c);
    fprintf('\n\n a\t\t\t b\t\t\t c\t\t\t\t fc\n\n')
    while abs(fc)>e
     ar(i)=c;
        fprintf('%f\t %f\t %f\t %f\t\n', a, b, c, fc)
        if fa*fc > 0  
            a=c;
            fa=subs(y,x,c);
        else
            b=c;
            fb=subs(y,x,c);
        end
        c=a-(a-b)*fa/(fa-fb);
    fc=subs(y,x,c);
    plot(ar);
    i=i+1;
    end
    fprintf('\nRoot is: %f\n', c);
end