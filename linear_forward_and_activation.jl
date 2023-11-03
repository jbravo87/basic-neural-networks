# Beginning of "linear_forward_and_activation.jl"
#=
Moving data through the network
First, linear output
Linear forward computation
=#
# testing some linear algebra calculations
# 2x3 matrix
w = [1 2 3; 4 5 6]
# 3x3 matrix
a = [1 1 0; 1 0 1; 0 1 1]
# bias matrix
b = [1 0 0; 0 1 0;]
z = ( w * a ) .+ b
print(z)
print("\nsize of matrix z: ", size(z))
print("\nnumber of rows in matrix w: ", size(w, 1))
print("\nnumber of columns in matrx a: ", size(a, 2))

@assert size(z) == (size(w,1), size(a,1))

# End of "linear_forward_and_activation.jl"