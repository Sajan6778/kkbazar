import 'package:flutter/material.dart';
import 'package:responsive/largescreen/Addressmanager.dart';
import 'package:responsive/largescreen/Addressmanager.dart';
import 'package:responsive/largescreen/Login.dart';
import 'package:responsive/largescreen/demodesign.dart';
import 'package:responsive/largescreen/newdeatail.dart';
import 'package:responsive/largescreen/pdf%20file.dart';
import 'package:responsive/largescreen/user_profile%20page.dart';
import 'package:responsive/largescreen/userprovider.dart';
import 'package:provider/provider.dart';
import 'package:responsive/largescreen/Responsive_login.dart';
import 'package:responsive/largescreen/dashboardpage.dart';
import 'package:responsive/largescreen/dialogbox.dart';
import 'package:responsive/largescreen/new.dart';
import 'package:responsive/largescreen/newproductlist.dart';
import 'package:responsive/largescreen/product_detail.dart';
import 'package:responsive/largescreen/referpage.dart';
import 'package:responsive/largescreen/searchdetailspage.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  runApp(const MyApp());
  setUrlStrategy(PathUrlStrategy());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddressManager()),
        // Add more providers if needed
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KK BAZAR',
        theme: ThemeData(
          fontFamily: 'RedRose',
        ),
        onGenerateRoute: (settings) {
          // Define your routes here
          return MaterialPageRoute(
            builder: (context) {
              // Depending on the route settings, return the corresponding widget
              return Login()
              ;
            },
          );
        },
      ),
    );
  }
}

