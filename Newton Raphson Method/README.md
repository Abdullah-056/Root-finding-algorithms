# README

The Newton-Raphson method is a numerical algorithm used to find the root of a function.
It is an iterative method that starts with an initial guess for finding real root of non-linear equations and then improves the estimate of the root with each iteration.
In Newton Raphson method if x0 is initial guess then next approximated root x1 is obtained by following formula:

x1 = x0 - f(x0) / df(x0)

And an algorithm for Newton Raphson method involves repetition of above process i.e. we use x1 to find x2 and so on until we find the root within desired accuracy.
However, it is important to note that the method may not converge for all functions and initial guesses, and care should be taken when using it in practice.
