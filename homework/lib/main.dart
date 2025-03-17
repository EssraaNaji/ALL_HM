enum ProductCategory {
  electronics,
  clothing,
  homeAccessories,
  beauty,
  downloadableContent,
  digitalLicense,
}

abstract class Product {
  final String id;
  final String name;
  final double price;
  final ProductCategory category;
  int stockQuantity;
  double discountPercentage;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.stockQuantity,
    this.discountPercentage = 0,
  });

  double get discountedPrice => price * (1 - discountPercentage);

  void applyDiscount(double percentage) {
    discountPercentage = percentage.clamp(0.0, 1.0);
  }

  void removeDiscount() {
    discountPercentage = 0;
  }
}

class PhysicalProduct extends Product {
  final double weight;

  PhysicalProduct({
    required String id,
    required String name,
    required double price,
    required ProductCategory category,
    required int stockQuantity,
    required this.weight,
    double discountPercentage = 0,
  }) : super(
         id: id,
         name: name,
         price: price,
         category: category,
         stockQuantity: stockQuantity,
         discountPercentage: discountPercentage,
       );
}

class DigitalProduct extends Product {
  final String downloadLink;
  final String licenseKey;

  DigitalProduct({
    required String id,
    required String name,
    required double price,
    required ProductCategory category,
    required int stockQuantity,
    required this.downloadLink,
    required this.licenseKey,
    double discountPercentage = 0,
  }) : super(
         id: id,
         name: name,
         price: price,
         category: category,
         stockQuantity: stockQuantity,
         discountPercentage: discountPercentage,
       );
}

class InventoryManager {
  final List<Product> _products = [];

  void addProduct(Product product) => _products.add(product);

  List<Product> get allProducts => List.unmodifiable(_products);

  List<PhysicalProduct> get physicalProducts =>
      _products.whereType<PhysicalProduct>().toList();

  List<DigitalProduct> get digitalProducts =>
      _products.whereType<DigitalProduct>().toList();

  List<Product> getProductsByCategory(ProductCategory category) =>
      _products.where((p) => p.category == category).toList();

  double get totalInventoryValue => _products.fold(
    0,
    (total, product) =>
        total + (product.discountedPrice * product.stockQuantity),
  );

  void applyCategoryDiscount(ProductCategory category, double percentage) {
    for (var product in _products.where((p) => p.category == category)) {
      product.applyDiscount(percentage);
    }
  }
}

// Example usage
void main() {
  final inventory = InventoryManager();

  // Add physical products
  inventory.addProduct(
    PhysicalProduct(
      id: 'P1',
      name: 'Smartphone',
      price: 699.99,
      category: ProductCategory.electronics,
      stockQuantity: 50,
      weight: 0.4,
    ),
  );

  inventory.addProduct(
    PhysicalProduct(
      id: 'P2',
      name: 'Designer Jeans',
      price: 129.95,
      category: ProductCategory.clothing,
      stockQuantity: 100,
      weight: 0.8,
    ),
  );

  // Add digital products
  inventory.addProduct(
    DigitalProduct(
      id: 'D1',
      name: 'Photo Editing Software',
      price: 199.00,
      category: ProductCategory.digitalLicense,
      stockQuantity: 500,
      downloadLink: 'https://example.com/download',
      licenseKey: 'XXXX-XXXX-XXXX',
    ),
  );

  // Apply discounts
  inventory.applyCategoryDiscount(ProductCategory.electronics, 0.15);
  inventory.allProducts[1].applyDiscount(0.20);

  // Get inventory insights
  print(
    'Total Inventory Value: \$${inventory.totalInventoryValue.toStringAsFixed(2)}',
  );
  print(
    'Electronics Products: ${inventory.getProductsByCategory(ProductCategory.electronics).length}',
  );
  print('Digital Products: ${inventory.digitalProducts.length}');
}
