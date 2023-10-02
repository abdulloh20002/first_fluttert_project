import 'package:flutter/material.dart';
import 'package:mymess/list.dart';
import 'package:mymess/search.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var str=Lists();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
              },
              icon: Icon(
                Icons.search,
                color: Colors.black45,
              ))
        ],
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'Safe Messege',
          style: TextStyle(fontSize: 20, color: Colors.black45),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.black,thickness: 1,),
          itemCount: 2,
          itemBuilder: (context, i) {
        return Container(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('avatar/images/${i + 1}.jpg',fit: BoxFit.cover,)),
                  ),
                  Text('${str.names[i]}',style: TextStyle(
                    fontSize: 24
                  ),)
                ],

              )
            ],
          ),
        );
      })

    );
  }
}
