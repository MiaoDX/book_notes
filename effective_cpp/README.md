Effective C++, third version

# item33

* virtual method either be pure or have one implement (even the blank brace is ok)

I am not so sure is the codes in the book are pseudocodes or not, but codes like:

``` cpp
class Base{
public:
    virtual void mf1(); // will not compile at all,
    virtual void mf1() = 0; // ok
    virtual void mf1(){}; // ok
};
```

However, at least in item33, there are full of codes like the first one.


* the last example, forwarding funciton, I failed to provide a workable example

# item 54

* tuple in std, can contain different types of valuse

``` cpp
//tuple<int, string> t(1, "23");
//auto t = make_tuple(1, "23");
tuple<int, string> t = make_tuple(1, "23");

int a;
string b;
tie(a, b) = t;
cout << a << " " << b << endl;

cout << "first value: " << get<0>(t) << endl;
```
