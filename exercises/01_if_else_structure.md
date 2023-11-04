# Conditional (IF/ELSE) structure in Robot Framework

In automation, not every action we take is fixed or linear. There are situations where our test needs to decide which path to take based on certain conditions. Like many programming languages, Robot Framework offers a way to use conditionals in these kinds of situations.

## Exercise 1

**Objective:** Learn Robot Frameworks IF/ELSE structure.

Write a Robot Framework test case that logs into https://www.saucedemo.com/ and verifies the price of a given inventory item based on its name. If the product name is "Sauce Labs Bike Light", verify that the price is "$9.99". If the product name is not provided or different, log a warning message.
