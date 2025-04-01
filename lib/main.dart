import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffe Shop',
      home: Scaffold(
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
                color: const Color.fromARGB(255, 144, 22, 63),
                fontSize: 70,
                fontWeight: FontWeight.bold
                ),),
                Text( 'Prepárate para probar el mejor café del mundo', style: TextStyle(
                  color: Colors.black,
                  fontSize:25,

                ),)
               ],
             ),
            Image.asset('assets/coffe_shop_logo.png'),
            Column(
              children: [
                ElevatedButton(onPressed: (){}, child: Text ('IR A INSTAGRAM') ),
                ElevatedButton(onPressed: (){}, child: Text ('IR A FACEBOOK') ),
              ],
            )
            ],
            
               ),
        )),
     );
  }
}