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
    name: 'Americano',
    description: 'Café fuerte y concentrado.',
    price: 2.5,
    imageUrl: 'assets/americano.jpeg',
  ),
  Products(
    name: 'Latte',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),
  
  Products(
    name: 'Capuccino',
    description: 'Capuccino',
    price: 3.50,
    imageUrl: 'assets/Cappuccino.jpg',
  ),
  
  Products(
    name: 'Chai Latte',
    description: 'h',
    price: 3.50,
    imageUrl: 'assets/ChaiLatte.jpg',
  ),
  
  Products(
    name: 'Cold Brew',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/coldBrew.jpg',
  ),
  
  Products(
    name: 'Chocolate Caliente',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/chocolateCaliente.jpg',
  ),
  
  Products(
    name: 'Iced Latte',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/IcedLatte.webp',
  ),
  
  Products(
    name: 'Mocaccino',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/mocaccino.webp',
  ),

    Products(
    name: 'Café Latte',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),

    Products(
    name: 'Café Latte',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),

    Products(
    name: 'Smoothies',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/Smoothies.jpg',
  ),

    Products(
    name: 'Brownies',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/Brownies.jpg',
  ),

    Products(
    name: 'Brownies',
    description: 'Café con leche y espuma.',
    price: 3.50,
    imageUrl: 'assets/Brownies.jpg',
  ),
];