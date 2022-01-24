from cpython.ref cimport PyObject

cdef extern from "../../cpp/simple.h" namespace "cx":
	int add(int x, int y);
	void exec_func(PyObject* func)
	PyObject* exec_func_arg2(PyObject * func, PyObject * arg1, PyObject * arg2)
