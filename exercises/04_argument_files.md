# Argument files

Argument files can be used to provide command-line arguments to Robot Framework. This is especially useful when you have common arguments that you want to use multiple times.

## Exercise 4

**Objective:** Use Robot Framework's argument files to modularize the test settings, making it easier to switch between different test configurations.

1. Create an argument file named saucelabs_args.txt.
2. Move the saucedemo URL, username, and password into the argument file as variables.
3. Write a test case to (you can use your old test cases as a starting point):
    - Open the saucedemo website.
    - Log in using the provided credentials from the argument file.
    - Verify you're logged in by asserting the presence of an element (you can choose an appropriate element post-login).
4. Execute the test using the argument file.

**Extra:** Add all your command-line arguments to the argument file (except the needed ones) and use that to have shorter command.
