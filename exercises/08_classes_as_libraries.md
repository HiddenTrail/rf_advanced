# Classes as libraries

Robot Framework is not limited to using functions as keywords. Entire Python classes can be used as libraries, with their methods becoming available as keywords. This provides a way to group related keywords and maintain a structured and organized library.

## Exercise 8.1 Tax Calculator as a Class

**Objective:** Learn how to use classes as the resource libaries.

Create a class in Python that performs the tax calculations and then use this class in a Robot Framework test.

## Exercise 8.2  Saucedemo Add to Cart as a Class

**Objective:** Create a class that encapsulates the functionality of adding items to the cart on the saucedemo website.

1. Create the saucedemo class with three different keywords as methods:
    - Open saucedemo.com
    - Log in
    - Add 3 products to cart
2. Import the class and use those methods in a test case.

## Exercise 8.3  More methods to your Class

1. Create three more keywords as methods to you saucedemo class:
    - Go to Cart
    - Checkout
    - Log out
2. Use those methods in a new test case.
