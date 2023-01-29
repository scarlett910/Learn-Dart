import 'dart:io';

class Bai82 {
  void resolve() {
    //Bài 82: Viết chương trình tìm số lớn nhất trong 3 số thực a, b, c
    print('Nhap a: ');
    int? a = int.parse(stdin.readLineSync()!);
    print('Nhap b: ');
    int? b = int.parse(stdin.readLineSync()!);
    print('Nhap c: ');
    int? c = int.parse(stdin.readLineSync()!);

    int max = a;
    if (max < b) {
      max = b;
    }
    if (max < c) {
      max = c;
    }
    print(max);
  }
}
