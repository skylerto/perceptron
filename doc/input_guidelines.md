# Input Guidelines

For an example of an input please take a look at the provided default [training
data](../data/x_train.txt).  

Training data should be placed in a file where each line represents a single
*training instance*. A *training instance* is a single line of data which tells
the perceptron give x,y what the desired output should be on the given input.

## Example

Given the first 3, and last 2 ines of [x_train.txt](../data/x_train.txt):
```
-3,-2,1
-2,-1,1
1,2,1
...
3,-2,0
3,-1,0
```

When x=-3 and y=-2 then the output should be 1,
when x=-2 and y=-1 then the output should be 1,
when x=1 and y=2 then the output should be 1,
when x=3 and y=-2 then the output should be 0,
when x=3 and y=-1 then the output should be 0.
