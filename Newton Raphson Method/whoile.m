syms x;
i=1;
a=x^3+x-5;
x(1)=input('Enter Initial Guess:');
error=input('Enter allowed Error:');
f=inline(a);
dif=diff(sym(a));
d=inline(dif);
fprintf('iteration\t\tRoot\n');
df=subs(a,x,x(1));
if(df==0)
    fprintf('Solution is not possible');
else
while(i<10)
    
x(i+1)=x(i)-((f(x(i))/d(x(i))));
fprintf('\t%d\t\t%f\n', i, x(i));
root=x(i+1);
err(i)=abs((x(i+1)-x(i))/x(i));
if err(i)<error
    fprintf('Final Root at %d iteration = %f\n',i+1, root);
break
end
i=i+1;
end
end