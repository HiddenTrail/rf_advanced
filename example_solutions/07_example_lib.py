from robot.libraries.BuiltIn import BuiltIn  # This is always available but is imported as an example

def calculate_total_with_tax(price, tax_rate):
    """
    Calculate the total price including tax.

    Arguments:
        - price: float or string representing the original price
        - tax_rate: float or string representing the tax rate percentage
    Returns:
        - total_price: float representing the total price including tax
    """
    try:
        price = float(price)
        tax_rate = float(tax_rate)
    except ValueError:
        raise ValueError("Both 'price' and 'tax_rate' should be convertable to float.")

    total_price = price + (price * (tax_rate / 100))
    return total_price
