require_relative './activation_function'

##
# Trainer Class to train the Perceptron
class Trainer
  
  attr_accessor :x
  attr_accessor :y
  attr_accessor :output

  ##
  # Initialize the x, y, output as new arrays.
  def initialize
    @x = Array.new
    @y = Array.new
    @output = Array.new
  end

  ##
  # Train the perceptron.
  def train filename="data/x_train.txt"

    # Read from the file if we haven't already
    if @x.empty? && @y.empty? && @output.empty?
      read filename
    end

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
