# Python functions as a keywords

Now let's dive a little deeper on the python side and make more keywords in python. In Robot Framework, any function defined within a Python library can be directly used as a keyword in the test case. This seamless integration offers a powerful way to leverage Python's capabilities within Robot Framework's structured environment.

## Exercise 7.1

**Objective:** Learn more about using python in Robot Framework keywords.

In this exercise, you will create a custom Python keyword that calculates the total price of an item after applying a tax rate. The keyword will accept two arguments: the original price of the item and the tax rate (as a percentage).

1. Create a Python file (e.g., TaxCalculator.py) and write a function to calculate the total price including tax.
2. Next, create a Robot Framework test file (e.g., CalculateTax.robot) that uses this custom keyword.

So the idea is to take price and tax rate as an arguments and then calculate the total price (total_price = price + (price * (tax_rate / 100))).

You should use BuiltIn library to help with this, other libraries are not needed. Remember to import the library in your python file.

## Exercise 7.2 FOR loop

For this exercise, we'll do the exercise 02 FOR loop solution to python and use that in a test case.

## Exercise 7.3 WHILE loop

For this exercise, we'll do the exercise 02 WHILE loop solution to python and use that in a test case.

Tip: You may also do couple of helper functions to

    - Generate random password
    - Check if you are logged in
    
    And use those in your while loop function.
