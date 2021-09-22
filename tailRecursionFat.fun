fun fact(n ; a) =
    if n == 1
    then a
    else return fact(n - 1 | n * a),

fact(5 | 1)