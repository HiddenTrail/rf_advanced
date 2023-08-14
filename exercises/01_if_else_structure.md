# Conditional (IF/ELSE) structure in Robot Framework

In automation, not every action we take is fixed or linear. There are situations where our test needs to decide which path to take based on certain conditions. Like many programming languages, Robot Framework offers a way to use conditionals in these kinds of situations.

The syntax:

## Exercise 1
**Objective:** Learn Robot Frameworks IF/ELSE structure.

Write a Robot Framework test case that logs into https://www.saucedemo.com/ using credentials based on user type (standard or locked). If the user type is "standard", use the credentials (standard_user, secret_sauce). If the user type is "locked", use the credentials (locked_out_user, secret_sauce).