# Conditional (IF/ELSE) structure in Robot Framework

In automation, not every action we take is fixed or linear. There are situations where our test needs to decide which path to take based on certain conditions. Like many programming languages, Robot Framework offers a way to use conditionals in these kinds of situations.

## Exercise 1.1 Basic IF/ELSE

**Objective:** Learn Robot Frameworks IF/ELSE structure.

Write a Robot Framework test case that:

1. Logs into https://www.saucedemo.com/
2. Checks the following:
    - If the product name is "Sauce Labs Bike Light", verify that the price is "$9.99".
    - If the product name is not provided or different, log a warning message.

## Exercise 1.2 ELSE IF

1. Log in to https://www.saucedemo.com/ with correct credentials.
2. Set the product name you want to check, for example, 'Sauce Labs Fleece Jacket' and set the expected price for the product.
3. Write a keyword to retrieve the actual price of the product from the webpage.
4. Use an IF statement to check if the product name is 'Sauce Labs Backpack' and verify the price.
5. Use ELSE IF statements to check for additional product names like 'Sauce Labs Bike Light', 'Sauce Labs Bolt T-Shirt', and 'Sauce Labs Fleece Jacket', verifying the price for each one.
6. Use the ELSE block to log a warning if none of the product names match.

## Exercise 1.3 Nested IF/ELSE

**Objective:** Learn Robot Frameworks nested IF/ELSE structure.

1. Log in to https://www.saucedemo.com/ with correct credentials.
2. Set the product name you want to check, for example, 'Sauce Labs Backpack'.
3. Set the expected price for the product.
4. Write two keywords:
    - to retrieve the actual price of the product from the webpage
    - to check the availability of the product from the webpage.
5. Use an IF statement to check if the product name matches 'Sauce Labs Backpack' or your selected one.
6. Inside the IF block, use another IF statement to check if the actual price matches the expected price.
7. If the price matches, use another IF statement to check if the product is in stock.
8. If the product is in stock, log that information. Otherwise, log a warning message about the stock status.
9. If the price does not match, log a warning message about the price discrepancy.
10. If the initial product name check fails, log a warning message about the product name not being provided or not matching known products.
