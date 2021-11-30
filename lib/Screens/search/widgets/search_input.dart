import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),hintText: "Search",hintStyle: TextStyle(color: Colors.grey,fontSize: 18)),
          )),
          SizedBox(
            width: 10,
          ),
          Container(),
        ],
      ),
    );
  }
}
