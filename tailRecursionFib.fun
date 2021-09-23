fun fib(n ; a ; b) = 
    if n == 0 then 
      a 
    else if n == 1 then 
      b 
    else 
      fib(n - 1 | b | a + b), 
      
fib(10 | 0 | 1)