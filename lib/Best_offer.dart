import 'package:book_rent/Detail_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:book_rent/Books.dart';

class Bestoffer extends StatelessWidget {
  var listofOffer=Books.generateBestoffer();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child:Column(
          children:<Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Best offer',style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 15,fontWeight: FontWeight.bold),),
                Text('See All',style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            ...listofOffer.map((value) =>
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return Detail_app_bar(books:value);}));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration:BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children :[ Row(
                      children: [
                        Container(
                          width: 150,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(value.imageUrl),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Text(value.name,
                            style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                            SizedBox(height: 10,),
                            Text(value.AuthorName,
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15),textAlign:TextAlign.start,)
                          ],
                        )
                      ],
                    ),
                      Positioned(
                        right: 0,
                          child:ClipOval(
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                            splashColor: Colors.red,
                            onTap: (){

                            },
                            child: SizedBox(width:20,height:20,child: Image.asset('asset/bookmark.png'),),
                          ),
                        ),
                      )
                      )
                    ]
                  ),
                ),
              )).toList(),
          ],
        )
    );
  }
}
