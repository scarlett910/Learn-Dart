import 'dart:io';

class Bai95 {
  void resolve() {
    // Bài 95: Viết chương trình nhập 3 số thực. Hãy thay tất cả các số âm bằng trị tuyệt đối của nó
    print('Nhap a:');
    int? a = int.parse(stdin.readLineSync()!);

    print('Nhap b:');
    int? b = int.parse(stdin.readLineSync()!);

    print('Nhap c:');
    int? c = int.parse(stdin.readLineSync()!);

    if (a < 0) {
      a *= -1;
    }
    if (b < 0) {
      b *= -1;
    }
    if (c < 0) {
      c *= -1;
    }
    print(a);
    print(b);
    print(c);
  }
}
