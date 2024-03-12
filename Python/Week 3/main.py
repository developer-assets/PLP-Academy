def calculate_discount(price, discount_percent):
  if (discount_percent < 20):
    return price
  else:
    new_price = price * (discount_percent / 100)
    new_price = price - new_price
    return new_price
  
input_price = float(input("Enter the price: "))
input_discount = float(input("Enter discount percent: "))

print(calculate_discount(input_price, input_discount))