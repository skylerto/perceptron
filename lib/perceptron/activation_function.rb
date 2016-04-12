##
# A module for managing Perceptron activation functions.
#
# This module is easily extendable, simple define a ActivationFunction.xyz where
# xyz is the new activation function.
#
module ActivationFunction

  ##
  # Calculates the weighted sum of a given weights array, x coordinate, and y
  # coordinate.
  #
  # weights - an array of wieghts
  # x - a x coordinate
  # y - a y coordinate
  #
  def ActivationFunction.weighted_sum weights=nil, x=nil, y=nil
    if weights.nil? && x.nil? && y.nil?
      raise Exception
    elsif weights.size != 3
      raise Exception
    else 
      weight_x, weight_y, bias = weights
      sum = x * weight_x + y * weight_y + bias
    end
    sum
  end
end
