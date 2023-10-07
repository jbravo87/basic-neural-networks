# Beginning of basic_neural_network.jl
#=
A simple 2-layer neural network using structs.
=#

# Input, output, output layer, and weights
struct InitialConditions
    input::Array{Float64}
    weights_1::Array{Float64}
    weights_2::Array{Float64}
    y::Array{Float64}
    output::Array{Float64}
end

# Input
x = [0 0 1; 0 1 1; 1 0 1; 1 1 1]
# Output
y = [0 1 1 0]
# Four nodes in hidden layer
weights_1 = rand(size(x)[2], 4)
output = zeros(size(y))

# Instance of InitialConditions
initial_conditions = InitialConditions(x, y, weights_1, rand(4, 1), output)
#initial_conditions.output

# Feedforward
function feedforward(self::InitialConditions)
end

# Backpropogation





# End of basic_neural_network.jl