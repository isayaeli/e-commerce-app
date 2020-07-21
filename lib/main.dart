import 'package:flutter/material.dart';
import 'package:pochoz/pages/items.dart';


void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'pochoz',
       home:Scaffold(
         appBar:AppBar(
           backgroundColor: Colors.blueGrey,
           title: Center(
             child: Text('Smart Genge', style: TextStyle(color: Colors.white),),
             ),
           ),
           body: Items(),
           bottomNavigationBar: BottomNavigationBar(
             items: [
               BottomNavigationBarItem(
                 icon: Icon(Icons.home),
                 title: Text('Home')
               ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.shopping_basket),
                 title: Text('Shopping cart')
               ),
               BottomNavigationBarItem(
                 icon: Icon(Icons.person),
                 title: Text('Profile')
               )
             ]
             ),
       )
    );
  }
}