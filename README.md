# Perceptron

This is a perceptron implementation in ruby, the perceptron classifies 2
dimensional linear functions.  

It's written in a gem structure however it's not available on rubygems.

## Installation

```
$ git clone https://github.com/skylerto/perceptron.git
$ cd perceptron
```

And then execute:

    $ bundle

## Usage

To use this run `bin/console` to pop an interactive prompt where you can train
the perceptron with the default data or your own data.  

To train a perceptron run `Perceptron.train xyz` where xyz is the path to the
file, or if no file is given it trains it with the data from `data/x_train.txt`. For a
specification of what a training file should look like please output the look at
[input guidelines](doc/input_guidelines.md). This returns a trained perceptron
which can be used for classification.  

To classify a specific coordinate using your trained perceptron, run
`Perceptron.classify p, x, y` where p is your trained perceptron (if none is given it
uses the last trained perceptron), x is the desired  x coordinate and y is the desired
y coordinate in the classification.  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/perceptron. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## Modules

Modules are designed as to be easily extendable. 

### ActivationFunction

This module is easily extendable, simple define a ActivationFunction.xyz where xyz is the new activation function.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

