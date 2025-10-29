class ProductData {
  final int id;
  final String name;
  final String category;
  final double price;
  final String unit;
  final double quantity;
  final bool inStock;
  final double rating;
  final String image;
  final String description;

  ProductData({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.unit,
    required this.quantity,
    required this.inStock,
    required this.rating,
    required this.image,
    required this.description,
  });

  /// Convert from Map → ProductData
  factory ProductData.fromMap(Map<String, dynamic> map) {
    return ProductData(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      category: map['category'] ?? '',
      price: (map['price'] ?? 0).toDouble(),
      unit: map['unit'] ?? '',
      quantity: (map['quantity'] ?? 1).toDouble(),
      inStock: map['inStock'] ?? false,
      rating: (map['rating'] ?? 0).toDouble(),
      image: map['image'] ?? '',
      description: map['description'] ?? '',
    );
  }

  /// Convert ProductData → Map (for saving to Firebase or local storage)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'price': price,
      'unit': unit,
      'quantity': quantity,
      'inStock': inStock,
      'rating': rating,
      'image': image,
      'description': description,
    };
  }

  /// Copy with method (optional, useful for updates)
  ProductData copyWith({
    int? id,
    String? name,
    String? category,
    double? price,
    String? unit,
    double? quantity,
    bool? inStock,
    double? rating,
    String? image,
    String? description,
  }) {
    return ProductData(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      unit: unit ?? this.unit,
      quantity: quantity ?? this.quantity,
      inStock: inStock ?? this.inStock,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, category: $category, price: $price, '
        'unit: $unit, quantity: $quantity, inStock: $inStock, '
        'rating: $rating, image: $image, description: $description)';
  }
}
