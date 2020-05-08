
import 'package:flutter/material.dart';


class GenrePage extends StatefulWidget {
  @override
  _GenrePageState createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  bool  homme  = true ;
    bool femme  = false ;
 

  Widget _text() {
    return Positioned(
      top: 200,
      child: Container(
        margin: EdgeInsets.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(10.0, 10.0),
              )
            ]),
        child: Column (
          children: <Widget>[
            SizedBox( height:25.0),
             Text( ' Vous étes' , style:TextStyle(color:Color(0xFFF57C00), fontWeight: FontWeight.bold, fontSize: 25.0),),
             SizedBox( height:25.0),
            
       
             Row( children: <Widget>[
                SizedBox( width :30.0),
               Text( "Homme",style:TextStyle(color:Color( 0xff739D84), fontSize: 18.0)),
    Checkbox( 
              
               value: homme,
               activeColor : Color( 0xFFF57C00),
               checkColor: Colors.white,
               onChanged: ( bool value){ setState(() {homme =value; });},

             ),
             ]
             ) ,
              SizedBox( height: 10.0),
Row( children: <Widget>[
  SizedBox( width : 30.0),
               Text( "Femme",style:TextStyle(color:Color( 0xff739D84), fontSize: 18.0)),
    Checkbox( 
              
               value: femme,
               activeColor : Color(0xFFF57C00),
               checkColor: Colors.white,
               onChanged: ( bool value){ setState(() {femme =value; });},

             ),
             ]
             ) ,

               
          ]
        ),
        
        ),
      
    );
  }

  
           
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffF2E9DB),
     
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            _text(),
          ],
        ),
      ),
    );
  }
}
