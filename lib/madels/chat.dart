
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymess/madels/persons.dart';

class Chat extends StatefulWidget{
  final Persons? persons;
  const Chat({super.key,required this.persons});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var person=Persons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(onPressed: (){},child:  Text(widget.persons?.names ?? '',style: TextStyle(
          color:Colors.black45,
            fontSize: 20
        ),),),
      ),

    );


  }
}