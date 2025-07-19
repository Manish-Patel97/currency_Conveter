import 'package:flutter/material.dart';
import 'currency_conveter_material_page.dart';

void main() {
  runApp(
  const MyApp(),
  );
}
//abstract class we need to override build method
class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {


//Design type   
//Material Design designed by Google
//material app is the root of the application
//Cupertino Design designed by Apple
  
      return MaterialApp(
        debugShowCheckedModeBanner: false,

//scaffold is a widget that provides all the basic material design visual layout structure
// it's commonly used on pages where you need Material Design layout features (like AppBar, FAB, Drawer, SnackBar, etc.)
       
        home: CurrencyConveterMaterialPage()
      );
    
  }
}