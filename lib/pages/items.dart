import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pochoz/models/items_model.dart';
import 'package:pochoz/pages/items_details.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 170,
            child: Carousel(
              images:[
                AssetImage('images/product-1.jpg'),  
                AssetImage('images/product-2.jpg'),
                AssetImage('images/category-3.jpg'),
                AssetImage('images/category-1.jpg'),
                AssetImage('images/about.jpg')
              ],
              indicatorBgPadding: 1,
              dotSize: 2,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:5),
            height:20,
            child: Center(child: Text('Categories',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),
            ),)
          ),
          Container(
            height:120,
            color: Colors.transparent,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:10, top:10),
                  height: 70,
                  width: 100,
                  decoration:BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(image: AssetImage('images/product-10.jpg'), fit: BoxFit.cover)
                  ),
                 child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX:0.0, sigmaY:0.0),
                        child: Container(

                          color:Colors.black.withOpacity(0.2),
                          child: Center(child: Text('Fruits',
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20 ),
                       ),
                        ),
                        ),
                      ),
                ),
                SizedBox(width:10),
                 Container(
                  margin: EdgeInsets.only(left:10, top:10),
                  height: 70,
                  width: 100,
                  decoration:BoxDecoration(
                  
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(image: AssetImage('images/product-6.jpg'),fit: BoxFit.cover)
                  ),
                  child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX:0.0, sigmaY:0.0),
                        child: Container(
                          color:Colors.black.withOpacity(0.2),
                          child: Center(child: Text('Mboga',
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20 ),
                       ),
                        ),
                        ),
                      ),
                ),
                SizedBox(width:10),
                 Container(
                  margin: EdgeInsets.only(left:10, top:10),
                  height: 70,
                  width: 100,
                  decoration:BoxDecoration(
                    
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(image: AssetImage('images/product-8.jpg'),fit: BoxFit.cover)
                  ),
                 child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX:0.0, sigmaY:0.0),
                        child: Container(
                          color:Colors.black.withOpacity(0.2),
                          child: Center(child: Text('Vinywaji',
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20 ),
                       ),
                        ),
                        ),
                      ),
                ),
                SizedBox(width:10),
                 Container(
                  margin: EdgeInsets.only(left:10, top:10),
                  height: 70,
                  width: 100,
                  decoration:BoxDecoration(
                  
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(image: AssetImage('images/category-1.jpg'),fit: BoxFit.cover)
                  ),
                  child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX:0.0, sigmaY:0.0),
                        child: Container(
                          color:Colors.black.withOpacity(0.2),
                          child: Center(child: Text('Nafaka',
                           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20 ),
                       ),
                        ),
                        ),
                      ),
                ),
                
               
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(top:5),
            height:20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Center(child: Text('Featured products',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),
            ),),

            Center(child: Text('See all >',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),
            ),)
              ],
              )
          ),
         Expanded(
           child:  Container(
             
             margin: EdgeInsets.only(bottom:10,top:2),
            height:180,
            child:ListView.builder(
              itemCount: data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i){
                return InkWell(
                  onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Details(
                    name:data[i].name,
                    img:data[i].img,
                    price:data[i].price,
                    amount:data[i].amount
                  ))),
                  child: Container(
                  margin: EdgeInsets.only(left:5, top:10, right: 5),
                  height: 100,
                  width: 150,
                  decoration:BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget> [
                      Container(
                        height:80,
                      decoration:BoxDecoration(
                      color:Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(image: AssetImage(data[i].img),fit: BoxFit.cover,)
                      ),
                      
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          SizedBox(height:2),
                          Padding(padding: EdgeInsets.only(left:10),
                          child:  Text( data[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ),
                          SizedBox(height:2),
                          Padding(padding: EdgeInsets.only(left:10),
                            child: Text(data[i].amount,
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                          )
                          ),
                          SizedBox(height:2),
                          Padding(padding: EdgeInsets.only(left:10),
                          child:Text(data[i].price,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          )
                          ],
                        ),
                      )
                    ]
                  ),
                ),
                );
              },
                 
            )
          ),
         )
        ],
      ),
    );
  }
}