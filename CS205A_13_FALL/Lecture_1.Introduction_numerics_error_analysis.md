Lecture_1.Introduction_numerics_error_analysis

## Mathematically correct ~= Numerically sound

``` cpp
    double x = 1.0;
    double y = x / 3;
    if ( x == y*3 ) cout << "They are equal!";
    else cout << "They are NOT equal.";

    if ( fabs ( x - y*3.0 ) < numeric_limits<double>::epsilon() )
        cout << "They are equal!";
    else cout << "They are NOT equal.";
```

Even though both of the answer are `They are equal!`, this example gives the right value to look for when we want to compare two float numbers, `epsilon`

## Backward Error

> The amount a problem statement would have to change to realize a given approximation of its solution.

* $y^* = \sqrt x$

$|y^{'2} - x|$ can be treat as one backward error

* $Ax=b$

$||Ax'-b||^2$

## Conditioning

* Well-conditioned

Small backward error => Small forward error

* Condition number

Ratio of forward to backward error

$(x-x^*)/(f(x)-f(x^*))$=$\Delta /(f(x)-f(x+\Delta))$=$1/f(x)'$
