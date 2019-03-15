Introduction:

Gaussian elimination (also known as row reduction) is an algorithm for solving systems of linear equations. Please refer to the below wikipedia page to learn more about it. 

https://en.wikipedia.org/wiki/Gaussian_elimination

Gaussian_elm function

Mandatory arguments:

num_or_matrix – The function can either take in numbers or a matrix.

If the input is numbers: 
total_columns - (By default its 0) must specify the total number of the columns (including the right hand side). 
DO NOT use total columns argument if matrix is your input.

Note: Total column argument requires total number of columns including the right hand side. The function recognizes the last column as the right hand side. 

Optional arguments:

ByRow – (By default its FALSE):  If the input values (numbers or matrix) are needed to be considered rowwise (or to be transposed). 

rowScaling – (By default its FALSE): If rowscaling is required in addition to Gaussian elimination.

partialPivoting - (By default its FALSE): If partial pivoting is required in addition to Gaussian elimination.


Directions:

The input must either be in the form of a numbers or matrix. The right hand side values must also be provided along with left hand side. The function recognizes the last column of input values to be right hand side. ONLY if vector is an input, please specify the total number of columns (total columns including the right hand side). 

Potential results:

The function prints the partial pivot matrix, if the partial pivoting is TRUE. 
It prints step-wise Gaussian elimination results.
In the final stage it prints, the individual variable values.
The upper triangular (or the final result) is returned by the function.

