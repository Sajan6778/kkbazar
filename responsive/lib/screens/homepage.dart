import 'package:flutter/material.dart';
import 'package:responsive/screens/largescreen/desktoppage.dart';
import 'package:responsive/screens/mediumscreen/macpage.dart';
import 'package:responsive/screens/mobilescreen/mobilepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
      body: SafeArea(child: LayoutBuilder(builder: (context ,Constraints){

        if(Constraints.maxWidth>950){
          return Desktop();
        }else if(Constraints.maxWidth>600){
          return Mac();
        }else{
          return Mobile();
        }
      })),
     ) );
  }
}