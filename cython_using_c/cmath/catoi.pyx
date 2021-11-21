from libc.stdlib cimport atoi

cpdef parse_charptr_to_pyint(char* s):
    assert s is not NULL, "byte string value should not be NULL"
    return atoi(s)