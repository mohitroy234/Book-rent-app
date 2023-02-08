import 'package:flutter/material.dart';

class Nav_bar extends StatelessWidget {
  final bottomBarItem=[
    'home (1)',
    'loupe',
    'notification',
    'messenger',
    'bookmark'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color:Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0,3),
            )
          ]
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:bottomBarItem.map((value)=>Container(
          width: 20,
          height: 20,
          child: Image.asset('asset/$value.png',
            color: Theme.of(context).primaryColor,),
        )).toList(),
      ),
      );
  }
}
