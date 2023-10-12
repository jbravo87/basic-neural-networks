# Beginning of basic_neural_network.jl
#=
A simple 2-layer neural network using structs.
=#
#using LinearAlgebra # <- Don't need this function.

# Input, output, output layer, and weights
struct InitialConditions
    input::Matrix{Float64}
    weights_1::Matrix{Float64}
    weights_2::Matrix{Float64}
    y::Matrix{Float64}
    output::Matrix{Float64}
end

# Input
x = [0 0 1; 0 1 1; 1 0 1; 1 1 1]
# Output
y = [0 1 1 0]
# Four nodes in hidden layer
weights_1 = rand(size(x)[2], 4)
output = zeros(size(y))

# Dot product matrix operation
function dot_product(self::InitialConditions)
    return self.input * self.weights_1
end

# Instance of InitialConditions
initial_conditions = InitialConditions(x, weights_1, rand(4, 1), y, output)
#initial_conditions.output

matrix_1 = dot_product(initial_conditions)

# Activation function
function sigmoid(t)
    return 1/(1 + exp(-t))
end

# Feedforward
function feedforward(self::InitialConditions)
    layer_1 = sigmoid.(self.input * self.weights_1)
    layer_2 = sigmoid.(layer_1 * self.weights_2)
    return layer_2
end


# Backpropogation
# End of basic_neural_network.jl
