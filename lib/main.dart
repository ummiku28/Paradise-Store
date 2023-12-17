import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store/firebase_options.dart';
import 'package:store/pages/cartpage.dart';
import 'package:store/pages/home.dart';
import 'package:store/pages/itempage.dart';
import 'package:store/pages/kategorisepatu.dart';
import 'package:store/pages/taspage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: "Paradise Store",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(205, 239, 237, 234),
       ),
       routes: {
        "/" : (context) => HomePage(),
         "cartPage" : (context) => CartPage(),
          "itemPage" : (context) => itempage(),
          "tasPage" : (context) => taspage(),
           "sepatuPage" : (context) => sepatupage(),
        
       },
    );
   

  }
}

