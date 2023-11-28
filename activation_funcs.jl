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
    u = max.(0, t)
    return (u, t)
end

#=
Want to include some plotting logic
to visualize the activation functions.
=#

using Plots, LaTeXStrings
#using Plots
# Sigmoid Function
f(x) = 1/(1+exp(-x))
#plot(f, -6:0.01:6, label = L"f(x)")
plot(f, -6:0.01:6, label = "Sigmoid Function")
# ReLU function
g(y) = max(0, y)
plot!(g, 0:1, ls=:dash, label="ReLU function")
#plot!(x -> x, ls=:dash, label = L"45^o")

x = range(-6, 6, length=100)
y(t) = 1 ./ (1 .+ exp.(.-t))
plot(x, y)
g(y) = max.(0, y)
plot(x, g)
# End of "activation_funcs.jl"