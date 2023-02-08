import 'package:flutter/material.dart';
class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: const BorderSide(
                  width: 2.0,
                color:Color(0xff808080))
            ),
            hintText: "search",
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
