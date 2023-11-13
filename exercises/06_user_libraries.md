# User libraries

In Robot Framework, you're not limited to using only the provided keywords and libraries. You can create your own custom libraries in Python and utilize them in your test scripts. This provides a higher level of customization, allowing you to design specific operations tailored to your test needs.

## Exercise 6.1 Very simple keyword in pythonß

**Objective:** Understand the basic creation and utilization of a custom user library in Robot Framework.

In this exercise, you will create a simple Python-based library that contains a single function, named "my_keyword". This function will, when executed, print a statement indicating its role as a keyword. You will then incorporate this custom library into a Robot Framework test case and execute the "my_keyword" function.

1. Begin by creating a new Python file named my_library.py.
2. Within the python file, define a function called my_keyword.
    - This function should print the statement: "This function is now a keyword in Robot Framework!"
3. Create a new Robot Framework test script. Or use one of your previous ones.
4. In the settings, import your newly created library using: Library my_library.py
5. Create a test case named "Test Your Library".
6. Within this test case, call the my_keyword function.
7. Run the test case.
8. Observe the console or log output. You should see the print statement from the my_keyword function, indicating its successful execution as a Robot Framework keyword.
