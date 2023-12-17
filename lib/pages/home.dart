import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/widget/Drawer.dart';
import 'package:store/widget/appbarwidget.dart';
import 'package:store/widget/category.dart';
import 'package:store/widget/popular.dart';
import 'package:store/widget/terbaru.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),
      
          //search
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.5),
                      spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(Icons.youtube_searched_for_outlined,
                  color: Colors.brown[400],
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Mau beli apa?",
                        border: InputBorder.none,
                      ),
                    ),
                    ),
                  ),
               
                ],
              ),
              ),
            ),
        ),
  //kategori
  Padding(padding: EdgeInsets.only(top: 20, left: 10),
  child: Text("Kategori",
  style: TextStyle(
    fontFamily: "Champion",
    fontWeight: FontWeight.bold,fontSize: 20,
    color: Color.fromARGB(255, 92, 79, 76),
  ),),
  ),
  CategoriesWidget(),


 Padding(padding: EdgeInsets.only(top: 20, left: 10),
  child: Text("Populer",
  style: TextStyle(
    fontFamily: "Champion",
    fontWeight: FontWeight.bold,fontSize: 20,
    color: Color.fromARGB(255, 92, 79, 76),
  ),),
  ),

PopularItemsWidget(),

 Padding(padding: EdgeInsets.only(top: 20, left: 10),
  child: Text("Terbaru",
  style: TextStyle(
    fontFamily: "Champion",
    fontWeight: FontWeight.bold,fontSize: 20,
    color: Color.fromARGB(255, 92, 79, 76),
  ),),
  ),

  ItemTerbaru(),
        ],
      ),
      //drawer

      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3),
            )
          ],
        ),
        child: FloatingActionButton(onPressed: () {

          Navigator.pushNamed(context, "cartPage");
        },
        child: Icon(CupertinoIcons.cart, size: 28,color: Colors.black,
        ),
        backgroundColor: Colors.brown[200],

        
        ),

        
      ),
    );
  }
}