import 'package:book_rent/Books.dart';
import 'package:book_rent/Detail_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class  recommen extends StatelessWidget {
  final recommendedList = Books.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child:ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){return Detail_app_bar(books:recommendedList[index]);}));
            },
           child: Container(
        height: 300,width: 230,padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color:Colors.white54,
            borderRadius: BorderRadius.circular(10.0),

        ),
        child: Stack(children: [
        Image.asset(
              recommendedList[index].imageUrl,
              fit:BoxFit.cover
        ),
            Positioned(
                bottom: 0,
                left:0,
                right:0,
                child: Container(
                color:Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child:Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(recommendedList[index].name,style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text(recommendedList[index].AuthorName,style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12,fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  )
            ))
        ],
        )
      ),
          ),
          separatorBuilder:(context, index) =>  SizedBox(width: 10,),
          itemCount: recommendedList.length),
    );
  }
}
