class Producto {
  // * propiedades
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  // * constructor
  Producto({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  // ? constructor con nombre
  factory Producto.fromJson(Map<String, dynamic> json) {
    //retorna una instancia de Producto
    return Producto(
      id: json["id"],
      title: json["title"],
      price: json["price"]?.toDouble(),
      description: json["description"],
      category: json["category"],
      image: json["image"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image,
    };
  }
}
