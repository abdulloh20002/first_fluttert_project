import 'package:flutter/material.dart';
import 'package:mymess/madels/chat.dart';
import 'package:mymess/madels/persons.dart';

class WidgetCol extends StatelessWidget {
  final Persons persons;

  const WidgetCol({Key? key, required this.persons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /*   ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: Image.asset('avatar/images/${i + 1}.jpg',fit: BoxFit.cover,)),
                  ),*/
            CircleAvatar(
              backgroundImage: AssetImage(
                persons.images ?? 'avatar/images/poumolchaniya.jpg',
              ),
              radius: 50,
            ),
            const SizedBox(
              width: 1,
            ),
            Expanded(
                child: Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chat(
                                persons: persons,
                              )));
                },
                child: Text(
                  '${persons.names} ',
                  style: const TextStyle(fontSize: 24, color: Colors.teal),
                ),
              ),
            ))
          ],
        )
      ],
    );
  }
}
