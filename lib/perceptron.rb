require "perceptron/version"
require_relative "perceptron/activation_function"
require_relative "perceptron/trainer"

module Perceptron
  def Perceptron.classify p, x, y
    sum = ActivationFunction.weighted_sum p.weights, x, y
    sum > 0 ? out = 1 : out = 0
    puts out
  end
end

#p = Trainer.new
#p.train
#

