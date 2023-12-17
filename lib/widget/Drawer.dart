import 'package:flutter/material.dart';


//di video di waktu 45:16
class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child:  ListView(
        children: [
          DrawerHeader(child: UserAccountsDrawerHeader(
            accountName: Text("Ummik"),
            accountEmail: Text("ummiku28@gmail.com"),
          ),
          ),
        ],
      ),
    );
  }
}