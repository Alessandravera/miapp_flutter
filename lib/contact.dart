
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miapp_flutter/products.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CONTACTO', style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 25.0,
        color: Colors.white,
      ),), backgroundColor: Color.fromARGB(255, 196, 72, 113)), 
       body: Container(
         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    'BY: ALESSANDRA VERA Y MARIA ROJAS',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 156, 59, 91),
                      fontSize: 30,
                      fontWeight:FontWeight.w300,
                      shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0), // Desplazamiento de la sombra (horizontal, vertical)
                        blurRadius: 20.0, // Radio de desenfoque de la sombra
                        color: Colors.grey, // Color de la sombra
                      ),
                    ],
                    ).copyWith(
                      fontFamily: GoogleFonts.badScript().fontFamily,
                ),),
                Text( 'Esta app fue creada para hacer mas fácil la interacción con nuestros productos y puedas observar todo lo que ofrecemos para tu paladar', style: GoogleFonts.outfit(
                  color:const Color.fromARGB(255, 82, 53, 42),
                  fontSize:25,
                  fontWeight: FontWeight.w300,
                ),)
               ],
             ),

             SizedBox(height: 20),
             ListTile(
                 title: Center( child: Text( "Teléfono", style: GoogleFonts.roboto(color: Color.fromARGB(255, 0, 0, 0), 
                 fontWeight: FontWeight.w500)),),
                 subtitle: Center(child: Text( " 04123576582"),)
                        
              ),
              ListTile(
                 title: Center( child: Text( "Dirección", style: GoogleFonts.roboto(color: Color.fromARGB(255, 0, 0, 0), 
                 fontWeight: FontWeight.w500)),),
                 subtitle: Center(child: Text( "Playa El Angel- Nueva Esparta- Venezuela"),)
                        
              ),
              Text( 'Te esperamos pronto!', style: GoogleFonts.outfit(
                  color:const Color.fromARGB(255, 82, 53, 42),
                  fontSize:25,
                  fontWeight: FontWeight.w300,
                ),)

              
            ],
            
          ),
      )
    );
 
    
  }
}