import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      // "assets/images/logo.png",
      // "assets/images/logo.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

];

