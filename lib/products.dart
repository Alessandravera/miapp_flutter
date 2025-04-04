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
    description: 'Café negro fuerte y puro, ideal para los amantes del café tradicional.',
    price: 2.5,
    imageUrl: 'assets/americano.jpeg',
  ),

  Products(
    name: 'Latte',
    description: 'Café suave con leche, perfecto para empezar el día o disfrutar de una tarde relajada.',
    price: 3.50,
    imageUrl: 'assets/cafeConLeche.jpg',
  ),
  
  Products(
    name: 'Capuccino',
    description: 'Café con leche espumosa y un toque de cacao, una delicia italiana clásica.',
    price: 3.50,
    imageUrl: 'assets/Cappuccino.jpg',
  ),
  
  Products(
    name: 'Chai Latte',
    description: 'Té chai especiado con leche, una bebida reconfortante y exótica.',
    price: 3.50,
    imageUrl: 'assets/ChaiLatte.jpg',
  ),
  
  Products(
    name: 'Cold Brew',
    description: 'Café frío infusionado lentamente, suave y refrescante, perfecto para el verano.',
    price: 3.50,
    imageUrl: 'assets/coldBrew.jpg',
  ),
  
  Products(
    name: 'Chocolate Caliente',
    description: 'Chocolate caliente cremoso y dulce, ideal para los días fríos o para un capricho dulce.',
    price: 3.50,
    imageUrl: 'assets/chocolateCaliente.jpg',
  ),
  
  Products(
    name: 'Iced Latte',
    description: 'Café con leche fría, una opción refrescante y energizante para cualquier momento del día.',
    price: 3.50,
    imageUrl: 'assets/IcedLatte.webp',
  ),
  
  Products(
    name: 'Mocaccino',
    description: 'Café con leche, chocolate y crema batida, un postre líquido irresistible.',
    price: 3.50,
    imageUrl: 'assets/mocaccino.webp',
  ),

    Products(
    name: 'Smoothies',
    description: 'Bebidas refrescantes y nutritivas a base de frutas y verduras, ideales para un estilo de vida saludable.',
    price: 3.50,
    imageUrl: 'assets/Smoothies.jpg',
  ),

    Products(
    name: 'Brownies',
    description: 'Bizcochos de chocolate densos y húmedos, con un sabor intenso y una textura irresistible.',
    price: 3.50,
    imageUrl: 'assets/Brownies.jpg',
  ),

    Products(
    name: 'Croissants',
    description: 'Panecillos hojaldrados y crujientes, ideales para el desayuno o la merienda.',
    price: 3.50,
    imageUrl: 'assets/Croissants.jpg',
  ),

    Products(
    name: 'Galletas',
    description: 'Galletas variadas, desde las clásicas de chocolate hasta las más elaboradas con frutos secos y especias.',
    price: 3.50,
    imageUrl: 'assets/Galletas.jpg',
  ),
      Products(
    name: 'Helados',
    description: 'Helados cremosos y refrescantes, con diferentes sabores y presentaciones para disfrutar en cualquier momento.',
    price: 3.50,
    imageUrl: 'assets/helados.jpg',
  ),
      Products(
    name: 'Muffins',
    description: ' Magdalenas esponjosas y dulces, con diferentes sabores y rellenos para todos los gustos.',
    price: 3.50,
    imageUrl: 'assets/Muffins.jpg',
  ),
      Products(
    name: 'Sandwich',
    description: 'Sándwiches variados, desde los clásicos de jamón y queso hasta opciones más elaboradas con ingredientes gourmet.',
    price: 3.50,
    imageUrl: 'assets/sandwich.jpg',
  ),

  Products(
    name: 'Tostadas',
    description: 'Rebanadas de pan tostado con diferentes ingredientes, desde aguacate y tomate hasta opciones dulces con miel y frutas.',
    price: 3.50,
    imageUrl: 'assets/Tostadas.webp',
  )

];