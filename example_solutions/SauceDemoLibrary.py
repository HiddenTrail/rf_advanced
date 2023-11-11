from Browser import Browser

class SauceDemoLibrary:
    def __init__(self):
        self.browser_lib = Browser()

    def open_sauce_demo(self, url):
        self.browser_lib.open_browser(url)

    def login_to_sauce_demo(self, username, password):
        self.browser_lib.type_text('id=user-name', username)
        self.browser_lib.type_text('id=password', password)
        self.browser_lib.click('id=login-button')

    def add_first_three_products_to_cart(self):
        for index in range(1, 4):
            locator = f"xpath=(//button[text()='Add to cart'])[{index}]"
            self.browser_lib.click(locator)
