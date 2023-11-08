import Browser

browser_lib = Browser.Browser()

def add_first_three_products(url):
    browser_lib.open_browser(url)
    browser_lib.type_text('id=user-name', 'standard_user')
    browser_lib.type_text('id=password', 'secret_sauce')
    browser_lib.click('id=login-button')

    for index in range(1, 4):
        locator = f"xpath=(//button[text()='Add to cart'])[{index}]"
        browser_lib.click(locator)
