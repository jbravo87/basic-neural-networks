# Beginning of "activation_funcs.jl"
#=
Sigmoid activation function
=#
function sigmoid(t)
    u = 1 ./ (1 .+ exp.(.-t))
    return (u, t)
end

#=
Rectified Linear Unit (relu) activation function
=#
function relu(t)
    u - max.(0, t)
    return (u, t)
end

# End of "activation_funcs.jl"