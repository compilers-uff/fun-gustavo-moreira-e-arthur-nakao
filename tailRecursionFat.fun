fun fat(n ; a) =
    if n == 1
    then a
    else return fat(n - 1 | n * a),

fat(5 | 1)