import 'package:flutter/material.dart';
import 'package:mymess/madels/persons.dart';
import 'package:mymess/madels/profils.dart';

class Chat extends StatefulWidget{
  final Persons? persons;
  const Chat({super.key,required this.persons});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profils(persons:widget.persons)));

        },child:  Text(widget.persons?.names ?? '',style: const TextStyle(
          color:Colors.black45,
            fontSize: 20
        ),),),
      ),

    );


  }
}