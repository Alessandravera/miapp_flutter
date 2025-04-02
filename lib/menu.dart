import 'package:flutter/material.dart';
import 'package:miapp_flutter/products.dart';


class MenuPage extends StatelessWidget {
   
  const MenuPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Menú')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding( // Agregamos Padding para el texto
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}