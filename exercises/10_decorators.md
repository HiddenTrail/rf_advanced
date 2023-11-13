# Decorators

## Exercise 10.1 - Printing decorator

**Objective:** Create a Python decorator to log the execution of Robot Framework keywords.

1. In a Python file, define a decorator named rf_keyword_logger.
2. This decorator should print a message before and after the execution of a Robot Framework keyword function, indicating the start and end of the execution.
3. Define a Python function to be used as a Robot Framework keyword, such as a simple keyword to log in to a saucedemo.com. (you may copy existing also)
4. Apply the rf_keyword_logger decorator to this function.
5. Import the Python file as a library in a Robot Framework test suite.
6. Create a test case that uses the login keyword.
7. Run the test and observe the log messages.

## Exercise 10.2 - Timing decorator

**Objective:** Create a Python decorator to measure the execution time of Robot Framework keywords.

1. In the same Python file, define a decorator named rf_keyword_timer.
2. The decorator should measure the time taken by the keyword function to execute. (Tip: you may need to import something to handle this)
3. Define another keyword function or use the existing one.
4. Apply the rf_keyword_timer decorator.
5. Import and use this keyword in a Robot Framework test case.
6. Run the test and observe the execution time in the logs.

