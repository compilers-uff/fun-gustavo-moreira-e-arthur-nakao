# Trabalho de conclusão do curso de Compiladores 2021.1

Christiano Braga  
Instituto de Computação  
Universidade Federal Fluminense

- Data de entrega: 24/09/2021

## Objetivo

Estender a linguagem Fun e seu interpretador com suporte a definição
de uma função com um número indefinido de parâmetros e sua chamada.

## Etapas

1. Modifique a gramática de Fun para dar suporte a declaração de
   funções com vários paraâmetros.
2. Modifique o compilador de Fun para Π IR de forma que declarações e
   expressões apropriadas sejam geradas a partir do código Fun.
3. Teste sua estensão implementando versões que utilizem recursão de
   cauda (_tail recursion_) das funções ```fat``` e ```fib```. Modifique também o
   exemplo da função ```apply```.

## Grupo

Gustavo Moreira e Arthur Nakao

## Como executar

- maude.linux64 fun2.maude

### fat (normal)

- red pp(out(exec(comp(parse("fun fat(x) = if x == 0 then 1 else x * fat(x - 1), fat(10)"))))) .

### fat (tail recursion)

É importante notar que os formals (;) e os actuals (|) possuem separadores distintos para não criar conflito entre os operadores definidos. Ainda, devem haver espaços em branco antes e depois dos separadores: " ; " e " | ".  

- red pp(out(exec(comp(parse("fun fat(n ; a) = if n == 1 then a else fat(n - 1 | n * a), fat(5 | 1)"))))) .

### fib (normal)

- red pp(out(exec(comp(parse("fun fib(x) = if x == 0 then 0 else if x == 1 then 1 else fib(x - 1) + fib(x - 2), fib(4)"))))) .

### fib (tail recursion)

### apply

- red pp(out(exec(comp(parse("fun fat(x) = if x == 0 then 1 else x * fat(x - 1), fun apply(f ; x) = f(x), apply(fat | 10)"))))) .

