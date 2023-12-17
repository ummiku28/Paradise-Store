import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tasnavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return   BottomAppBar(
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 15),
         height: 70,
         child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(

            children: [
              Text("Total: ", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, //color: Colors.red,
              ),),
              SizedBox(
                width: 15,
              ),
             
              Text("\Rp 250.000", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red,
              ),
              ),
            ],
          ),
          ElevatedButton.icon(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal:20, ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          ),
          icon: Icon(CupertinoIcons.cart),
           label: Text("Keranjang", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),),
         ],
           
         ),
         
      ),
    ); 
  }
}