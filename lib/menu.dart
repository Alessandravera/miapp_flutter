import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miapp_flutter/products.dart';


class MenuPage extends StatelessWidget {
   
  const MenuPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text('Menú', style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 25.0,
        color: Colors.white,
      ),), backgroundColor: Color.fromARGB(255, 196, 72, 113)),
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
                        style:  GoogleFonts.outfit(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        product.description,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                          color: Colors.grey[700], 
                        ),
                      ),
                       Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        style: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 179, 107, 156),
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