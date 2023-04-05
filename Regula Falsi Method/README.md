# README

Regula Falsi method or the method of false position is a numerical method for solving an equation in one unknown.
It is quite similar to bisection method algorithm.
It was developed because the bisection method converges at a fairly slow speed.
Let f(x1) < 0 and f(x2) > 0. 
Hence the root of the equation f(x) = 0 lies between x1 and x2 and so, f(x1)f(x2) < 0.
Formula of regula-falsi method:

X3=x1-(((x2-x1)/(f(x1)-f(x1)))*f(x1))

Find f(x3) is positive or negative. If f(x3) > 0 then root lies between x3 and x1 or if f(x3) < 0 then root lies between x3 and x1  similarly we calculate x4.
Proceed in this manner until the desired accurate root is found.
