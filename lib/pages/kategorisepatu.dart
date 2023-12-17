import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/fetch_data_shop.dart';
//import 'package:store/widget/CartBottomNavBar.dart';
import 'package:store/widget/Drawer.dart';
import 'package:store/widget/appbarwidget.dart';
//import 'package:tastetraders_app/widgets/CartBottomNavBar.dart';

class sepatupage extends StatefulWidget {
  @override
  State<sepatupage> createState() => _sepatupageState();
}

class _sepatupageState extends State<sepatupage> {
  Repository repo = Repository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: repo.fetchDataPlaces(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData){
return ListView(
          children: [
            SingleChildScrollView(
             child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Kategori Sepatu",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
      
                  //Item
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Container(
                        
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                         
                          children: [InkWell(
                  
                          onTap: (){
                            Navigator.pushNamed(context, "itemPage");
                          
                        },
                        child:  Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/ tv.jpg",
                                height: 80,
                                width: 150,
                              ),
                            ),
                      ),
                            
                           
                            Container(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Sport's Shoes",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "for Man and Woman",
                                    style: TextStyle(
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Rp 175.000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
      
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Container(
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/2.jpg",
                                height: 80,
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "PVN Shoes",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Sepatu elegan hitam putih",
                                    style: TextStyle(
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Rp 100.000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
      
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 9),
                      child: Container(
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                         
                          children: [
                            
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "images/heels.png",
                                height: 80,
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 190,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Heels Shoes",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Heels dengan tinggi 3cm",
                                    style: TextStyle(
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "\Rp 150.000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
            } else {
                    return Center(child: CircularProgressIndicator());
                  }
            
          }),
        )
        
      );
      drawer: DrawerWidget();
      //bottomNavigationBar: CartBottomNavBar(),

}
}
