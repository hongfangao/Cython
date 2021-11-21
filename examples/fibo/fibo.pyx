# cython: language_level=3
def fibo(n):
    a,b = 0,1
    while b<n:
        print(b)
        a,b = b,a+b