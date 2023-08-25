# Looping - FOR and WHILE loops

## Exercise 2.1 FOR loop

**Objective:** Learn basic looping functionality. Try out FOR loop in this exercise.

Write a test case that logs into the Sauce Demo site and adds the first three available products to the cart using a loop.

## Exercise 2.2 WHILE loop

**Objective:** Learn basic looping functionality. Try out WHILE loop in this exercise.

In this exercise, you'll be using the WHILE loop in Robot Framework to simulate a scenario where a user tries to log in multiple times until successful. You'll be incorporating the ability to attempt login continuously until a specific condition (like being redirected to the inventory page) is met.

1. Navigate to https://www.saucedemo.com/.
2. Set a counter variable, say ${attempt_count}, to 1.
3. Begin a WHILE loop that continues as long as ${attempt_count} is less than or equal to 5.
4. Within the loop:
    - Input a predefined username in the username field.
    - Input a wrong password (change slightly with every iteration) in the password field.
    - Click on the login button.
    - If the inventory page loads (URL changes to https://www.saucedemo.com/inventory.html), break out of the loop.
    - If not, increment ${attempt_count} by 1 and continue.
5. End the loop.
6. After the loop, log the number of attempts it took to log in successfully.


**Expected Outcome:** The test should try to log in multiple times until it reaches the inventory page or until the ${attempt_count} reaches 6.
