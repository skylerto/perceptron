require "perceptron/version"
require_relative "perceptron/activation_function"
require_relative "perceptron/trainer"

module Perceptron
end

p = Trainer.new
p.train
