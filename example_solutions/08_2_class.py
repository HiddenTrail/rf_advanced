class TaxCalculatorLibrary:
    def __init__(self):
        pass

    def calculate_total_with_tax(self, price, tax_rate):
        try:
            price = float(price)
            tax_rate = float(tax_rate)
        except ValueError:
            raise ValueError("Both 'price' and 'tax_rate' should be convertible to float.")
        
        total_price = price + (price * (tax_rate / 100))
        return total_price