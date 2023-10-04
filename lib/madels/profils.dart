import 'package:flutter/material.dart';
import 'package:mymess/madels/PhoneCall.dart';
import 'package:mymess/madels/persons.dart';

class Profils extends StatefulWidget {
  final Persons? persons;

  const Profils({super.key, this.persons});

  @override
  State<Profils> createState() => _ProfilsState();
}

class _ProfilsState extends State<Profils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(preferredSize: Size.fromHeight(40), child: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneCall(persons:widget.persons,)));
          }, icon:Icon(Icons.phone_enabled)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoCall(persons: widget.persons,)));
          }, icon: Icon(Icons.video_camera_front_outlined))
        ],
      ),),
      body: //Expanded(
        //  child:
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          children: [
            Container(

                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image(image: AssetImage(widget.persons?.images?? ""), fit: BoxFit.fill,)),
            SizedBox(height: 20,),
            Row(

              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Icon(Icons.person),
            SizedBox(width: 10,),
            Expanded(
              child: Text('${widget.persons?.names??""} ${widget.persons?.surnames??''}',

                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                fontSize: 34,
                color: Colors.black45,
              ),),
            ),]),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.phone_enabled),
                SizedBox(width: 7,),
                Text('${widget.persons?.phones??""}',style: TextStyle(
                  fontSize: 34,
                  color: Colors.black45
                ),)
              ],
            )
          ],
      ),
        ),
    );
  }
}
