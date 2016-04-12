require_relative './activation_function'

##
# Trainer Class to train the Perceptron
class Trainer
  
  attr_accessor :x
  attr_accessor :y
  attr_accessor :output
  attr_accessor :weights

  ##
  # Initialize the x, y, output as new arrays.
  #
  # Initialize weights (weight_x, weight_y, bias) as close to 0 as possible.
  def initialize
    @x = Array.new
    @y = Array.new
    @output = Array.new
    @weights = [0.0001,0.0001,0.0001]
  end

  ##
  # Train the perceptron with the desired training file.
  #
  # filename - path to a file to train the perceptron with.
  def train filename="data/x_train.txt"

    # Read from the file if we haven't already
    if @x.empty? && @y.empty? && @output.empty?
      read filename
    end

    i = 0 # Keep track of the iterations
    learning_rate = 0.1
    global_error = 0
    local_error = 0
    theta = 0

    begin
      sum = ActivationFunction.weighted_sum @weights, @x[i], @y[i]
      out = 0
      if sum >= theta
        out = 1
      end
      puts "Sum: #{sum}"

      local_error = @output[i] - out
      #puts "Local Error: #{local_error}"

      @weights[0] += learning_rate * local_error * @x[i]
      @weights[1] += learning_rate * local_error * @y[i]
      @weights[2] += learning_rate * local_error
      i = i + 1

      global_error += local_error * local_error
      #puts "Global Error : #{global_error}"

    end while (global_error != 0 && i < @output.size)

    puts "Decision Boundary Equation: #{@weights[0]}x + #{@weights[1]} +- #{@weights[2]}"
    @weights
  end

  private

  ##
  # Read from a properly formatted file, converting the comma seperated values into integers, and
  # storing them in the class variables
  def read filename
    # Open file, Read in and process data.
    file = File.open(filename)
    file.each do |line|
      # Comma seperated data.
      # E.g. 1,2,1 => x=1, y=2, output=1
      line = line.chomp
      if line.size > 0
        # If the line is not empty, then it has data
        line = line.split ","
        @x << line[0].to_i
        @y << line[1].to_i
        @output << line[2].to_i
      end
    end
  end
end
