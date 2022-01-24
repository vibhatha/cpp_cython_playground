# cpp_cython_playground

## Build

```bash
python3 setup.py build_ext --inplace
```
## Example

```python
>>> from cx import arg_udf
>>> def area(a, b):
...     return a*b
... 
>>> area(10,2)
20
>>> arg_udf(area, 10, 2)
20
```
