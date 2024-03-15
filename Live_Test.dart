void main() {

  List<Map<String, dynamic>> fruits = [
    {'name': 'Mango', 'color': 'Green', 'price': 4.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 5.0},
    {'name': 'Cherry', 'color': 'Red', 'price': 7.0}
  ];

  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 20);

  print('\nAfter applying discount:');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double currentPrice = fruit['price'];
    double discountAmount = (currentPrice * discountPercentage) / 100;
    fruit['price'] = currentPrice - discountAmount;
  }
}
