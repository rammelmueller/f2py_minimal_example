import fort_example as fe
import numpy as np

# run a simple test.
p = (4, 5, 1)
print('{:.1f} * {:.1f} + {:.1f} = {:.1f}'.format(*p, fe.test_module.multiply_add(*p)))

p = (
    np.asfortranarray([[1, 0], [0, 1]]),
    np.asfortranarray([[2, 0], [0, 2]]),
    np.asfortranarray([[0, 1], [1, 0]])
)
print(fe.test_module.multiply_add_mat(*p))
