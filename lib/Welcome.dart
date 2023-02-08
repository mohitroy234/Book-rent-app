import 'package:flutter/material.dart';
class WelcomeText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Column(
        children: [
          Text(
            'Discover Books',style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
