import 'package:flutter/material.dart';

class Details extends StatefulWidget {

  final name;
  final img;
  final price;
  final amount;

  Details({this.name, this.img, this.price, this.amount});

  @override
  _DetailsState createState() => _DetailsState();
}


class _DetailsState extends State<Details> {
  int _counter = 1;

   void _incrementCounter(){
     setState(() {
       _counter++;
     });
   }
   void _decrementCounter(){
     setState(() {
       _counter--;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Material(
        child:Stack(
          children:<Widget> [
        Container(
          height: MediaQuery.of(context).size.height,
         color:Colors.blueGrey,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Padding(padding: EdgeInsets.only(top:50,left: 20),
             child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: ()=> Navigator.of(context).pop()),
             ),
             Padding(padding: EdgeInsets.only(top:50, right: 20),
             child: IconButton(icon: Icon(Icons.favorite_border,color: Colors.white,), onPressed: null),
             )
           ],
         ),
       ),
       Container(
         width: MediaQuery.of(context).size.width,
         margin:EdgeInsets.only(top:150),
         decoration: BoxDecoration(
           borderRadius:BorderRadius.only(topLeft:Radius.circular(30), topRight:Radius.circular(30)),
           color: Colors.white
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment:MainAxisAlignment.center,
           children:<Widget> [
             Padding(padding: EdgeInsets.only(left:20, top: 150),
              child: Text(widget.name,
               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
             ),
             Padding(padding: EdgeInsets.only(left:20, top: 20,right: 60),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:<Widget>[
                   Text(widget.price,
               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color:Colors.blueGrey,
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.remove, color: Colors.white,), onPressed: _decrementCounter),
                    Text('$_counter',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),
                    ),
                    IconButton(icon: Icon(Icons.add, color: Colors.white,), onPressed: _incrementCounter),
                  ],
                )
              )
                ]
              )
             ),
             SizedBox(height:20),
             Container(
               margin: EdgeInsets.only(left:20),
               height: 120,
               child:Column(
                 mainAxisAlignment:MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children:<Widget>[
                    Text('A small river named Duden flows by their place and supplies it with the necessary regelialia.',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),
               ),
               SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Rating',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                         Icon(Icons.star_half)
                      ],
                    ),
                    Text('4.5',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),
                    )
                  ],
                  ),
                  SizedBox(height:4),
                  Expanded(child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("supplied by"),
                      Icon(Icons.arrow_forward),
                      Text('UmmaVegies',
                      style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ))
                 ]
               )
             ),
             SizedBox(height:10),
           Expanded(child:   Row(
               mainAxisAlignment:MainAxisAlignment.spaceAround,
               children:<Widget>[
                  FlatButton(
               onPressed: ()=> Navigator.of(context).pop(), 
               child: Container(
               color: Colors.blueGrey, 
               height: 40,
               width: 120,
               child: Row(
                 mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                 children:<Widget> [
                   Text('keep shopping',
                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                   ),
                   Icon(Icons.arrow_back_ios,color:Colors.white)
                 ]
               ),
               )
               ),
                FlatButton(
               onPressed: null, child: Container(
               color: Colors.blueGrey, 
               height: 40,
               width: 120,
               child: Row(
                 mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                 children:<Widget> [
                   Text('add To',
                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                   ),
                   Icon(Icons.shopping_basket,color:Colors.white)
                 ]
               ),
               )
               )
               ]
             ))
           ]
         ),
       ),
       Container(
         //color: Colors.red,
         margin: EdgeInsets.only(top:80, bottom: 380, left: 50, right: 50),
          // height: MediaQuery.of(context).size.height/2-130,
          // width: MediaQuery.of(context).size.width/2+300,
         child: CircleAvatar(
           backgroundImage: AssetImage(widget.img),
           maxRadius: 200,
         ),
       ), 
      ]
      )
    );
  }
}