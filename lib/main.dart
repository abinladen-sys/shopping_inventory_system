void main() {
  List<Product> products = [
    Product("Laptop", 2500.0, 5),
    Product("Mouse", 100.0, 5),
    Product("Keyboard", 200.0, 2),
  ];
  for (var product in products) {
    product.displayInfo();
  }
  double total = calculateInventoryValue(products);
  print("Total Inventory Value: $total");

  Map<String, double> prices = createPriceMap(products);
  print("Mouse Price: ${prices["Mouse"]}");
}

double calculateInventoryValue(List<Product> products) {
  double totalValue = 0.0;
  for (var product in products) {
    totalValue += product.price * product.quantity;
  }
  return totalValue;
}

Map<String, double> createPriceMap(List<Product> products) {
  Map<String, double> priceMap = {};
  for (var product in products) {
    priceMap[product.name] = product.price;
  }
  return priceMap;
}

class Product {
  String name;
  double price;
  int quantity;
  Product(this.name, this.price, this.quantity);
  displayInfo() {
    print("Product Name: $name");
    print("Price: $price");
    print("Quantity: $quantity");
  }
}
