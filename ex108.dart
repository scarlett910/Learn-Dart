import 'dart:io';

class Bai108 {
  void resolve() {
    print('Nhap x:');
    int x = int.parse(stdin.readLineSync()!);

    print('Nhap y:');
    int? y = int.parse(stdin.readLineSync()!);
    int so = 1;
    for (int i = 0; i < y; i++) {
      so = so * x;
    }
    print(so);
  }
}
