import 'package:flutter/material.dart';
import 'package:shopping/screen/category.dart';
import 'package:shopping/screen/bottombarNavigator.dart';
import 'package:shopping/configuration/route.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RouteApp.main:(context)=>  BottomBarNavigator(),
        RouteApp.categories:(context)=> const Category(),
        RouteApp.itemDetails: (context)=> const Category()
      },
      initialRoute: RouteApp.main,

    );
  }
}

