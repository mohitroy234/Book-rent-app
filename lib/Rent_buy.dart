import 'package:flutter/material.dart';
import 'package:book_rent/Books.dart';

import 'package:fluttertoast/fluttertoast.dart';
class Rent_buy extends StatefulWidget {
  final Books books;
  const Rent_buy({Key? key,required this.books}) : super(key: key);

  @override
  State<Rent_buy> createState() => _Rent_buyState();
}

class _Rent_buyState extends State<Rent_buy> {
  var qController = TextEditingController();
  var price="0";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Hero(
          tag: 'heroAddtodo',
          child:Card(
            margin: EdgeInsets.only(top:200.0,bottom: 200.0),
            color: Theme.of(context).primaryColor,
            elevation:2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(30.0),
                    child: TextField(
                      cursorColor: Colors.white,
                      controller: qController,
                      decoration: InputDecoration(
                        hintText: 'No.of Books',
                        prefixIcon: Icon(Icons.lock_clock),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Center(child: Text("Price:₹$price",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Center(child: Text(widget.books.price,style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Center(child: ElevatedButton(onPressed: (){
                    var quantity=qController.text.toString();
                    var q=int.parse(quantity);
                    var rate=int.parse(widget.books.stock);
                    var p=int.parse(widget.books.price);
                    if(q>rate){
                        Fluttertoast.showToast(msg: "Currently out of stock !!",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            textColor:Colors.red);
                    }
                    else{
                     setState((){
                       price=(q*p).toString();
                       Fluttertoast.showToast(msg: "₹$price Successfully transacted",
                           toastLength: Toast.LENGTH_LONG,
                           gravity: ToastGravity.BOTTOM,
                           textColor:Colors.red);
                     });
                    }

                  }, child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Buy',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
                  )))
                ],
              ),
            ),
          ) ,
        ),
      ),
    );;
  }
}
