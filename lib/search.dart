import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: TextField(
          decoration: InputDecoration(hintText: "найти",hintStyle: TextStyle(
            color: Colors.black45
          )),
          controller: controller,
          onChanged: (text){
            print("${controller.text}");
          },
        ),
      ),
    );
  }
}
