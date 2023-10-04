import 'dart:collection';

import 'package:collection/collection.dart';

class Persons {
  int? id;
  int? phones;
  String? names;
  String? surnames;
  String? images;
  List<String>? massages;
  String? times;

  Persons({this.id, this.names, this.surnames, this.images, this.massages, this.times,this.phones});

   List<Persons> _listPeron = [];

  List<Persons> get listPeron => _listPeron;

   void init() {
    _listPeron = [
      Persons(
          id: 989832,
          phones: 915172583,
          names: 'Avaz',
          surnames: 'Shamsidinzodaaaaaaa',
          images: 'avatar/images/1.jpg',
          massages: ['Salom', 'shumo omaded'],
          times: '12:30'),
      Persons(
          id: 982132139832,
          phones: 987654321,
          names: 'Dilshod',
          surnames: 'Dilshodov',
          images: 'avatar/images/2.jpg',
          massages: ['Salom', 'shumo omaded'],
          times: '10:30'),
      Persons(
          id: 982132139833,
          phones: 980884208,
          names: 'Tohir',
          surnames: 'Burhonov',
          images: 'avatar/images/poumolchaniya.jpg',
          massages: ['Salom', 'shumo omaded'],
          times: '10:30')
    ];
  }

  void _check() {
    var person = _listPeron.firstWhereOrNull((element) => element.id == 982132139832);

    var persss = _listPeron.where((element) => element.names == 'Dilshod').toList();

    print(person?.names);

    print(persss.length);
  }
}
