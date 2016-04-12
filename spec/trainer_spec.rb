require 'spec_helper'

describe Trainer do

  it 'should initialize with empty arrays' do
    trainer = Trainer.new

    expect(trainer.x).to eq([])
    expect(trainer.y).to eq([])
    expect(trainer.output).to eq([])
  end
  it 'should read x,y,output from the default data/x_train.txt' do
    trainer = Trainer.new
    trainer.train
    x = [-3,-2,1,2,-3,-1,1,-1,-2,-3,-3,-2,-1,-2,-1,2,3,-1,1,3,2,1,1,2,3,3]
    y = [-2,-1,2,3,-1,1,3,2,1,3,2,3,3,-3,-2,1,2,-3,-1,1,-1,-2,-3,-3,-2,-1]
    output = [1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0]
    expect(trainer.x).to eq(x)
    expect(trainer.y).to eq(y)
    expect(trainer.output).to eq(output)
  end
end
