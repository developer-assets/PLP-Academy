def calculate_discount(price, discount_percent): 
  if discount_percent >= 20:
    discount = price * (discount_percent / 100)
    return price - discount
  else:
    return price
  
print("Enter original price: ")
original_price = float(input())
print("Enter discount percentage: ")
original_discount = float(input())

print(calculate_discount(original_price, original_discount))
