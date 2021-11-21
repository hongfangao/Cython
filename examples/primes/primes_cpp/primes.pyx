# distutils: language=c++
# cython:language_level=3
from libcpp.vector cimport vector
def primes(unsigned int nb_primes):
    cdef int n, i
    cdef vector[int] p
    n = 2
    while p.size() < nb_primes:
        if p.size() == 0:
            p.push_back(2)
        else:
            for i in p:
                if n % i == 0:
                    break
            if i == p[p.size()-1]:
                p.push_back(n)
        n = n + 1
    return p