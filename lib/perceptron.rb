require "perceptron/version"
require_relative "perceptron/activation_function"
require_relative "perceptron/trainer"

module Perceptron
  $perceptron=nil

  ##
  # Classify the give Perceptron
  def Perceptron.classify p=$perceptron, x, y
    if $perceptron.nil?
      puts "Please train a perceptron first!"
      return
    else
      sum = ActivationFunction.weighted_sum p.weights, x, y
      sum > 0 ? out = 1 : out = 0
      out
    end
  end

  ##
  # Returns a Trainer class with a perceptron trained from the passed filename
  def Perceptron.train filename="data/x_train.txt"
    $perceptron = Trainer.new
    $perceptron.train filename
    $perceptron
  end
end

#p = Trainer.new
#p.train
#

