import time

def rf_keyword_logger(func):
    def wrapper(*args, **kwargs):
        print(f"Starting keyword: {func.__name__}")
        result = func(*args, **kwargs)
        print(f"Finished keyword: {func.__name__}")
        return result
    return wrapper

def rf_keyword_timer(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        print(f"Execution time of keyword {func.__name__}: {end_time - start_time} seconds")
        return result
    return wrapper

@rf_keyword_timer
def greet_user(name):
    print(f"Hello, {name}! Welcome to Robot Framework!")
