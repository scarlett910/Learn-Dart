import 'dart:io';

class Bai77 {
  void resolve() {
    //Bài 77: Viết chương trình tính tổng của dãy số sau:
    // S(n) = 1 + 2 + 3 + … + n

    print('Nhap n: ');
    int? n = int.parse(stdin.readLineSync()!);
    int i = 1;
    int s = 0;
    while (i <= n) {
      s += i;
      i++;
    }
    print(s);
  }
}
