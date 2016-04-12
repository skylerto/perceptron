require 'spec_helper'

describe ActivationFunction do
  it 'weighted_sum returns an Error if no args' do
    begin
      ActivationFunction.weighted_sum
    rescue Exception => ex
      expect(Exception).to eq(ex.class)
    end
  end

  it 'weighted_sum should raise an Exception if weights size is not 3' do
    begin
      weights = [1,1]
      ActivationFunction.weighted_sum weights, 1, 1
    rescue Exception => ex
      expect(Exception).to eq(ex.class)
    end
  end

  it 'weighted_sum should calculate the weighted sum' do
    weights = [1,1,1]
    x = 1
    y = 1
    expect(ActivationFunction.weighted_sum weights, x, y).to eq(3)
  end
end
