void main() {
  // Create a list of fruits
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  // Display original fruit details
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // Apply discount of 10%
  applyPriceDiscount(fruits, 10);

  // Display fruit details after discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

// Function to display fruit details
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price'].toStringAsFixed(2)}');
  }
}

// Function to apply discount to fruit prices
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountedPrice = currentPrice - (currentPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}
