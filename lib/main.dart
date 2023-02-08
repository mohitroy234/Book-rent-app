

import 'package:book_rent/Home.dart';
import 'package:book_rent/Rent_buy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/Home',
    routes:{
    '/Home':(context)=>Home(),

    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      backgroundColor: Color(0xfff5f6f6),
      primaryColor: Color(0xff811883),
      accentColor: Color(0xfffA5019),
      textTheme: TextTheme(
        headline1:TextStyle(color:Color(0xff100E34),
        ),
          bodyText1:TextStyle(color: Color(0xff100E34).withOpacity(0.5))
      )
    ),
  ));

}


