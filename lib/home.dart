import 'package:flutter/material.dart';
import 'package:miapp_flutter/contact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
   
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final Uri instagramurl = Uri.parse('https://www.instagram.com/coffeshopmgta');
    Future<void> _cargar() async {
      if (!await launchUrl(instagramurl)) {
        throw Exception('no se pudo cargar instagram $instagramurl');
      }
    }

    final Uri facebookurl = Uri.parse('https://www.instagram.com/coffeshopmgta'); //cambiar la url de facebook
    Future<void> _cargarFa() async {
      if (!await launchUrl(facebookurl)) {
        throw Exception('no se pudo cargar instagram $facebookurl');
      }
    }

    return Scaffold(
        drawer: Drawer(
        child: Container(
          color:const Color.fromARGB(255, 196, 72, 113),
          child: Column(
            children: [
              Container(
                
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 50, bottom:20),

                child: Image.asset('assets/coffe_shop_logo.png'),
              ),
              
                ListTile(
                leading: const Icon(Icons.home, color: Colors.white), 
                title: Text( "Inicio", style: GoogleFonts.roboto(color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500)),
                 onTap: () {                 
                  Navigator.pushNamed(context, '/home');      
                  }, 
              ),

              
                ListTile(
                leading: const Icon(Icons.contact_page, color: Colors.white), 
                title: Text( "Contacto", style: GoogleFonts.roboto(color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w500)),
                 onTap: () {                 
                  Navigator.pushNamed(context, '/contact');      
                  }, 
              ),
              
               


              ListTile(
                 leading: const Icon(Icons.coffee, color: Colors.white),
                 title: Text( "Menú", style: GoogleFonts.roboto(color: Color.fromARGB(255, 255, 255, 255), 
                 fontWeight: FontWeight.w500)),
                 onTap: () {                 
                  Navigator.pushNamed(context, '/menu');      
                  },        
              ),
            ],
          ),
        ),
      ),
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
        
          child: Column (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    'Coffee Shop',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 156, 59, 91),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
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
                Text( 'Prepárate para probar el mejor café del mundo', style: GoogleFonts.outfit(
                  color:const Color.fromARGB(255, 82, 53, 42),
                  fontSize:25,
                  fontWeight: FontWeight.w300,
                ),)
               ],
             ),
            Image.asset('assets/coffe_shop_logo.png'),
            Column(
              children: [
                ElevatedButton(
                  onPressed: _cargar,

                child: Text ('IR A INSTAGRAM', style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),),

                style:ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 156, 59, 91),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40),),
                  elevation: 10.0
                ),
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: _cargarFa, child: Text ('IR A FACEBOOK',  style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  ) ),
                 style:ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 52, 47),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40),),
                  elevation: 10.0
                
                 ),
                ),
              ],
             )
            ],
          ),
        )
      );
         
  }
}