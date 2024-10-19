
# Assembly projects collection

⚠️ I AM NOT AN EXPERT IN ASM NOR DO I KNOW WHAT I AM DOING ⚠️ \
⚠️ Contains C code of the Assembly for no reason ⚠️ \
⚠️ The code written for the Arm architecture ⚠️

## Index of all the projects:

| name               | Description                       |
| :----------------- | :-------------------------------- |
| Star Pyramid       | Prints a pyradim of asterisks *   |
| Fibonacci Sequence | Computes the Fibonacci Sequence   |
| FizzBuzz           | Prints the first 100 Digits       |
| Random Number      | Prints 100 Numbers using [Xorshift](https://en.wikipedia.org/wiki/Xorshift) |
| Square Root Test | Prints the square root of 20,000 as an integer using the [Babylonian method](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Heron's_method) |
| Square Root Proper | Prints the square root of the input integer using the [Babylonian method](https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Heron's_method) |

## Running The Code

#### On `non-arm` Linux:
##### Run The Make File Included In The Project:
#### For Projects With no Inputs:
```bash
make asm
```
#### For Projects With Inputs:
```bash
make asm ARG=<value>
```
`<value>` is the actual value


#### On `Arm` Linux:
⚠️ NOT TESTED ⚠️
```bash
gcc code.s -o prog && ./prog
```

#### On Windows:
##### Get linux or WSL then use [this](#On-`non-arm`-Linux)
##### ¯\\\_(ツ)_/¯

## Why?
#### cus i can :)
