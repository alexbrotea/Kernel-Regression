# Kernel Regression

## build_kernel.m

In "build_kernel.m", a kernel matrix is constructed using a specified kernel function.  

This transforms the data into a higher-dimensional feature space, facilitating modeling of nonlinear relationships.  


## cholesky.m

The "cholesky.m" function performs the Cholesky decomposition of a symmetric positive-definite matrix.  

It provides a numerically stable method for solving linear equation systems.  


## conjugate_gradient.m

In "conjugate_gradient.m", the conjugate gradient method is implemented.  

This is an efficient technique for solving linear systems with sparse or symmetric positive-definite matrices.  


## eval_value.m

The "eval_value.m" script evaluates the value of the regression function at a given point.  

It uses the chosen kernel and model parameters to make predictions.  


## gaussian_kernel.m

In "gaussian_kernel.m", the Gaussian (RBF) kernel between two points is computed.  

This is a common approach to introduce nonlinearity in machine-learning models.  


## get_lower_inverse.m

The "get_lower_inverse.m" function computes the inverse of a lower-triangular matrix.  

This is important for matrix decompositions and optimization routines.  

*Credits: Santosh Tiwari (MATLAB Central forum)*  


## get_prediction_params_iterative.m

In "get_prediction_params_iterative.m", iterative methods are used to compute the model parameters.  

This optimizes computation for large or sparse matrices.  


## get_prediction_params_direct.m

The "get_prediction_params_direct.m" function is analogous to the iterative version, but employs direct methods—  
such as explicit matrix inversion or decomposition—to obtain the model parameters.  


## linear_kernel.m

In "linear_kernel.m", the dot product between two vectors is calculated.  

This represents the simplest form of a kernel.  


## polynomial_kernel.m

The "polynomial_kernel.m" script generates a polynomial kernel, extending linear relationships to a polynomial of a specified degree.  
