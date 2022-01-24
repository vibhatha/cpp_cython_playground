from setuptools import setup, Extension
from Cython.Build import cythonize

# in fact, cythonize() call can be omitted because
# setuptools.setup calls it automatically if Cython is installed
setup(
    name='cx',
    ext_modules=cythonize(
        Extension(
            'cx',
            sources=['cx/lib.pyx', '../cpp/simple.cc'],
	    include_dirs=['../../cpp/'],
	    language='c++',
        )
    )
)
