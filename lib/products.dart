import 'package:flutter/material.dart';

class Products {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Products({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<Products> products = [
  Products(
    name: 'Café Expreso',
    description: 'Café fuerte y concentrado.',
    price: 2.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),
  Products(
    name: 'Café Latte',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),
];