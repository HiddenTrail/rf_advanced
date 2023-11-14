# Listeners

## Exercise 12.1 - Listeners custom message

**Objective:** Write a listener using Robot Framework's BuiltIn library that logs a custom message at the beginning and end of each test case.

1. Create a Python file named SimpleListener.py.
2. Implement two methods within the file: start_test and end_test.
3. Each method should log a message indicating the test case has started or ended, respectively.
4. Run the listener by adding --listener (and your listenerfile) to your robot suite run.

## Exercise 12.2 - Listeners

1. Create another listener in a python file called AnotherListener.py.
2. Implement a listener which will stop the test suite run when fail happens.
3. Create some test cases (at least 3). You can just do basic logging or so (it is not important) but the idea is to then fail one with Fail keyword and check how the listener works.
4. Run the listener by adding --listener (and your listenerfile) to your robot suite run.

Tip: Run the test suites with the listener and without to see the difference
