import 'package:flutter/material.dart';

class Product {
   String image, title, description;
   int price, size, id;
   Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });

  

  factory Product.fromJson(Map json) {
    return Product(
      id: json['id'],
      image : json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: Color(int.parse(json['color']))
    );
}
}


String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
