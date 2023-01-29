import 'dart:io';

class UserInput {
  static int nhapSoV2([String label = 'Nhập 1 số:']) {
    print(label);
    return int.parse(stdin.readLineSync()!);
  }

  int nhapSo([String label = 'Nhập 1 số:']) {
    print(label);
    return int.parse(stdin.readLineSync()!);
  }
}
