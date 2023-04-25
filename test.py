import numpy as np
import _testlib

vals = np.ones(shape=(10), dtype=np.double)
sum = _testlib.sum_of_squares(vals)
print(sum)