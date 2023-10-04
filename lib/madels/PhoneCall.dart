
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymess/madels/persons.dart';
import 'package:mymess/madels/profils.dart';

class VideoCall extends StatefulWidget{
  final Persons? persons;
  const VideoCall({super.key,this.persons});


  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(

                //color: Colors.lightBlue,
                child:CircleAvatar(
                  backgroundImage: AssetImage(
                    widget.persons?.images ?? 'avatar/images/poumolchaniya.jpg',
                  ),
                  radius: 70,
                ),),
            ],
          ),

          SizedBox(height: 20),
          Text('${widget.persons?.names??""}  ${widget.persons?.surnames??""}'),
          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);},

                icon:Icon(Icons.phone_disabled),
              color: Colors.red,)


            ],
          ),
          SizedBox(height: 40,),

        ],
      ),
    );

  }
}

class PhoneCall extends StatefulWidget{
  final Persons? persons;
  const PhoneCall({super.key,this.persons});


  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _PhoneCallState extends State<PhoneCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              widget.persons?.images ?? 'avatar/images/poumolchaniya.jpg',
            ),
            radius: 50,
          ),
          SizedBox(height: 20),
          Text('${widget.persons?.names??""}  ${widget.persons?.surnames??""}')

        ],
      ),
    );

  }
}