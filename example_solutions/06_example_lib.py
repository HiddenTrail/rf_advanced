from robot.api.deco import keyword

@keyword
def my_keyword():
    print("This function is a keyword")

@keyword
def greet_user(name):
    print(f"Hello, {name}! Welcome to Robot Framework!")

