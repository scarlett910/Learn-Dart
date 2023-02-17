import 'dart:io';
import 'dart:math';

class UserInput {
  int enterInput(String label) {
    print(label);
    return int.parse(stdin.readLineSync()!);
  }

  List<int> createIntList({required int soPhanTu}) {
    List<int> list = [];
    var randomNumber = Random();

    while (list.length < soPhanTu) {
      int i = randomNumber.nextInt(200) - 100;
      list.add(i);
    }
    return list;
  }

  List<int> createOnlyPosIntList({required int soPhanTu}) {
    List<int> list = [];
    var randomNumber = Random();

    while (list.length < soPhanTu) {
      int i = randomNumber.nextInt(1000);
      list.add(i);
    }
    return list;
  }
}
