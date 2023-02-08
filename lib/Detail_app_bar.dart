import 'dart:ffi';
import 'dart:ui';
import 'package:book_rent/Payment.dart';
import 'package:book_rent/Rent_buy.dart';
import 'package:flutter/material.dart';
import 'package:book_rent/Books.dart';

import 'hero_dialog_route.dart';

class Detail_app_bar extends StatelessWidget {
  final Books books;
  const Detail_app_bar({Key? key,required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Container(
      height:300,
      child: Stack(
        children: [
          Image.asset(
            books.bimageUrl,
            fit:BoxFit.fitHeight,
            height:double.infinity,
          ),
          SafeArea(
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: Icon(Icons.arrow_back,color:Theme.of(context).primaryColor,size: 20,)),
                    ),
                  ),
                ),
              ) ),
          Align(
            alignment: Alignment.bottomCenter,
            child:Container(
              height: 450,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color:Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0)
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Container(
                    padding: EdgeInsets.only(right: 32,left: 32,bottom: 16),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          books.name,
                          style:Theme.of(context).textTheme.headline1?.copyWith(fontSize: 28,fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 10,),
                        Text(
                            books.AuthorName,
                            style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18,fontWeight: FontWeight.bold)
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Icon(Icons.star,size: 20,color:Colors.orange),
                            Icon(Icons.star,size: 20,color:Colors.orange),
                            Icon(Icons.star,size: 20,color:Colors.orange),
                            Icon(Icons.star,size: 20,color:Colors.orange),
                            Icon(Icons.star_half,size: 20,color:Colors.orange),

                            SizedBox(width: 12,),

                            Text(
                                books.score,
                                style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16,fontWeight: FontWeight.bold)
                            ),
                          ],
                        ),),
                        Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Text(
                                books.description,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 16,fontWeight: FontWeight.bold),
                              ),
                            )),

                      ],
                    )
                  )),
                  Container(
                      height: 100,
                      padding: EdgeInsets.only(top: 16,left: 32,right: 32,bottom: 3),
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          )
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                            GestureDetector(
                              onTap:(){
                                Navigator.of(context).push(HeroDialogRoute(
                                  builder:(context){
                                    return AddToPopCard();
                                  },
                                ));
                              },
                              child: Hero(
                                tag: 'heroAddtodo',
                                child: Container(
                                  width:150,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                      color:Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color:Theme.of(context).primaryColor.withOpacity(0.4),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(0,0),
                                        ),
                                      ]
                                  ),
                                  child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Rent',style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                          SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(HeroDialogRoute(
                                  builder:(context){
                                    return Rent_buy(books: books,);
                                  },
                                ));
                              },
                              child: Hero(
                                tag: '_heroAddtodo',
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  width:150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15.0),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color:Colors.grey.withOpacity(0.4),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(0,0),
                                        ),
                                      ],
                                      border: Border.all(
                                        color: Colors.grey,
                                        width:1,
                                      )
                                  ),
                                  child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Buy',style:Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18,fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            ),
                        ],
                      )
                  )
                ],
              ),
            )
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 32,bottom: (size.height * 0.5)-(75/2)),
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(0),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  )
                ),
                child: Container(
                  width:75,
                  height: 75,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image:AssetImage(books.AimageUrl),
                      fit:BoxFit.cover,
                    )
                  ),
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}

