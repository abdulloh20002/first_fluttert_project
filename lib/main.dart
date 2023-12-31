import 'package:flutter/material.dart';
import 'package:mymess/list.dart';
import 'package:mymess/madels/chat.dart';
import 'package:mymess/madels/persons.dart';
import 'package:mymess/search.dart';
import 'package:mymess/widget.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var str = Lists();

  var persons = Persons();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    persons.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:Center(
          child: Text('sbnfchbs'),
        ) ,
      ),
        appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Colors.black45,
          //   ),
          //   onPressed: () {
          //     Scaffold.of(context).openDrawer();
          //   },
          //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                },
                icon: const Icon(
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
            separatorBuilder: (BuildContext context, int i) => const Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
            itemCount: persons.listPeron.length,
            itemBuilder: (context, i) {
              return WidgetCol(persons: persons.listPeron[i]);
            }));
  }
}
