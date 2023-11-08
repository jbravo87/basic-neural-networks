# Beginning of "linear_forward_and_activation.jl"
#=
Moving data through the network
First, linear output
Create a linear forward computation
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
println("\nnumber of columns in matrix a: ", size(a, 2))
@assert size(z) == (size(w,1), size(a,2)) "\nFinal matrix size doesn't match."
# Above into a function
"""
Create linear forward and return
inputs as cache. 

## Input

- `a` -- input layer 
- `w` -- weights of the layer
- `b` -- biases of the layer
"""
function linear_forward(a, w, b,)
    z = ( w * a ) .+ b
    cache = (a, w, b)

    @assert size(z) == (size(w,1), size(a,2)) "\nFinal matrix size doesn't match."

    return (z, cache)
end

# End of "linear_forward_and_activation.jl"