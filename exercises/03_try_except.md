# Error Handling - TRY/EXCEPT

## Exercise 3.1

**Objective:** Learn how to use TRY/EXCEPT functionality.

1. Write a test case that tries to add an item to the cart but handles the exception if the item is not found.
    - You may also use the "Fail" keyword in the TRY to simulate a failure.

## Exercise 3.2 EXTRA: Keywords to error handling

Write a test case to saucedemo.com which will:

1. Attempt to add a non-existent item to cart.
2. Use the Run Keyword And Ignore Error keyword to handle the error gracefully in that keyword.
3. Log the outcome (either the error message or a success message).

Write another test case to saucedemo.com which will:

1. Performs an assertion that will fail (anything goes).
2. Use the Run Keyword And Continue On Failure keyword.
3. Observe that even after the failure, the test case continues to execute subsequent steps.
4. Log a message after the assertion to confirm that the test case continued.
