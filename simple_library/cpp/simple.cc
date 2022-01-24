#include <Python.h>
#include "simple.h"

int cx::add(int x, int y) {
    return x + y;
}

void cx::exec_func(PyObject * func) {
    PyObject* myResult = PyObject_CallObject(func, nullptr);
}

PyObject* cx::exec_func_arg2(PyObject * func, PyObject * arg1, PyObject * arg2) {
    PyObject* args = PyTuple_Pack(2, arg1, arg2);
    PyObject* myResult = PyObject_CallObject(func, args);
    return myResult;
}