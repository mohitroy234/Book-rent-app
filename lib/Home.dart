import 'package:book_rent/Best_offer.dart';
import 'package:book_rent/Categories.dart';
import 'package:book_rent/Recommended.dart';
import 'package:book_rent/custom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_rent/Welcome.dart';
import 'package:book_rent/Search_input.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        brightness: Brightness.light,
        leading: Icon(
          Icons.sort,
          color: Colors.grey.shade400,
          size: 28,
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            recommen(),
            Bestoffer(),

          ],
        ),
      ),
      bottomNavigationBar: Nav_bar(),
    );
  }
}

