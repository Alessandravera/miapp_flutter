import 'package:flutter/material.dart';
import 'package:miapp_flutter/contact.dart';
import 'package:miapp_flutter/menu.dart';
import 'package:miapp_flutter/routes/approute.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Shop', 
      routes: Approute.routes,
      home: Scaffold(
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
                leading: const Icon(Icons.home),
                title: const Text( "Inicio", style: TextStyle(color: Colors.white)),
              ),

              ListTile(
                leading: const Icon(Icons.contact_page),
                title: const Text('Contacto',  style: TextStyle(color: Colors.white)),
                onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ContactPage())),
              ),
              
              ListTile(
                 leading: const Icon(Icons.coffee),
                 title: const Text( "Menú", style: TextStyle(color: Colors.white)),
                 onTap: () {                 
                  Navigator.pushNamed(context, 'menu');      
                  }        
                
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
                Text( 'COFFE SHOP', style: TextStyle(
                color: const Color.fromARGB(255, 156, 59, 91),
                fontSize: 40,
                fontWeight: FontWeight.bold
                ),),
                Text( 'Prepárate para probar el mejor café del mundo', style: TextStyle(
                  color:const Color.fromARGB(255, 82, 53, 42),
                  fontSize:25,
                ),)
               ],
             ),
            Image.asset('assets/coffe_shop_logo.png'),
            Column(
              children: [
                ElevatedButton(onPressed: () async{
                  final Uri instagramurl = Uri.parse('https://www.instagram.com/coffeshopmgta');
                  if (await canLaunchUrl(instagramurl)){
                     launchUrl(instagramurl);
                  }else{
                    throw 'error al abrir Instagram. Intente mas tarde';
                  }
                }, 
                child: Text ('IR A INSTAGRAM', style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),),

                style:ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 156, 59, 91),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50)
                ),
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: () async{
                  
                  final Uri facebookurl = Uri.parse('https://www.instagram.com/coffeshopmgta');
                  if (await canLaunchUrl(facebookurl)){
                     launchUrl(facebookurl);
                  }else{
                    throw 'error al abrir Facebook. Intente mas tarde';
                  }
                }, child: Text ('IR A FACEBOOK',  style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  ) ),
                 style:ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 156, 59, 91),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                
                 ),
                ),
              ],
             )
            ],
          ),
        )),
      );
   }
}