from lib cimport add, exec_func, exec_func_arg2
from cpython.ref cimport PyObject

def py_add(x, y):
     return add(x, y)

def simple_udf(func):
     exec_func(<PyObject*> func)

def arg_udf(func, arg1, arg2):
     return <object>(exec_func_arg2(<PyObject*>func, <PyObject*>arg1, <PyObject*>arg2))