import 'dart:io';

class Bai83 {
  void resolve() {
    //Bài 83: Viết chương trình nhập 2 số thực, kiểm tra xem chúng có cùng dấu hay không

    print('Nhap d:');
    int? d = int.parse(stdin.readLineSync()!);
    print('Nhap e:');
    int? e = int.parse(stdin.readLineSync()!);

    //method 1
    if ((d < 0 && e < 0) || (d > 0 && e > 0)) {
      print('Hai số cùng dấu');
    } else {
      print('Hai số khác dấu');
    }

    //method 2
    if (d * e > 0) {
      print('Hai số cùng dấu');
    } else {
      print('Hai số khác dấu');
    }
  }
}
