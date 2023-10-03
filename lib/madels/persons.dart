import 'dart:collection';

import 'package:collection/collection.dart';

class Persons {
  int? id;
  String? names;
  String? surnames;
  String? images;
  List<String>? massages;
  String? times;

  Persons({this.id, this.names, this.surnames, this.images, this.massages, this.times});

   List<Persons> _listPeron = [];

  List<Persons> get listPeron => _listPeron;

   void init() {
    _listPeron = [
      Persons(
          id: 989832,
          names: 'Avaz',
          surnames: '',
          images: 'avatar/images/1.jpg',
          massages: ['Salom', 'shumo omaded'],
          times: '12:30'),
      Persons(
          id: 982132139832,
          names: 'Dilshod',
          surnames: '',
          images: 'avatar/images/2.jpg',
          massages: ['Salom', 'shumo omaded'],
          times: '10:30'),
      Persons(
          id: 982132139833,
          names: 'Dilshod',
          surnames: '',
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
