import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class AddToPopCard extends StatefulWidget {
  @override
  State<AddToPopCard> createState() => _AddToPopCardState();
}

class _AddToPopCardState extends State<AddToPopCard> {
  var pController = TextEditingController();
  var price="0";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Hero(
          tag: '_heroAddtodo',
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
                      controller: pController,
                      decoration: InputDecoration(
                        hintText: 'Enter the no.of days',
                        prefixIcon: Icon(Icons.lock_clock),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Center(child: Text('Charge: ₹10/day',style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)),),
                  Center(child: Text("Price:$price",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Center(child: ElevatedButton(onPressed: (){
                  var price1=pController.text.toString();
                  double p=double.parse(price1);
                  var p1=p*10;
                  setState(() {
                    price=p1.toString();
                    Fluttertoast.showToast(msg: "₹$price Successfully transacted",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    textColor:Colors.red);
                  });
                  }, child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Pay',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
                  )))
                ],
              ),
            ),
          ) ,
        ),
      ),
    );
  }
}
