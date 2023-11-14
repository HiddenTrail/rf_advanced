import Browser
import time

browser_lib = Browser.Browser()

# Example solution for exercise 7.2 (TODO: Remove hardcoding):
def add_first_three_products(url):
    browser_lib.open_browser(url)
    browser_lib.type_text("id=user-name", "standard_user")
    browser_lib.type_text("id=password", "secret_sauce")
    browser_lib.click("id=login-button")

    for index in range(1, 4):
        locator = f"xpath=(//button[text()='Add to cart'])[{index}]"
        browser_lib.click(locator)

# Example solution for exercise 7.3 and some extra keywords as functions:
def login_with_multiple_attempts(url, username, password):
    attempt_count = 1
    browser_lib.open_browser(url)
    while attempt_count <= 5:
        browser_lib.type_text("id=user-name", username)
        wrong_password = generate_wrong_password(password, attempt_count)
        browser_lib.type_text("id=password", wrong_password)
        browser_lib.click("id=login-button")

        if is_logged_in():
            break

        attempt_count += 1
        time.sleep(2)

    return attempt_count

def generate_wrong_password(base_password, modifier):
    return f"{base_password}{modifier}"

def is_logged_in():
    current_url = browser_lib.get_url()
    return current_url == "https://www.saucedemo.com/inventory.html"