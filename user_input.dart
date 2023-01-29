import 'dart:io';
import 'dart:math';

class UserInput {
  static int nhapSoV2([String label = 'Nhập 1 số:']) {
    print(label);
    return int.parse(stdin.readLineSync()!);
  }

  static List<int> taoMangSoNguyen(int soLuong) {
    List<int> list = [];
    var randomNumber = Random();

    while (list.length < soLuong) {
      int i = randomNumber.nextInt(100);
      list.add(i);
    }
    return list;
  }

  int nhapSo([String label = 'Nhập 1 số:']) {
    print(label);
    return int.parse(stdin.readLineSync()!);
  }
}
