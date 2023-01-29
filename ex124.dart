import 'dart:io';
import 'dart:math';

class Bai124 {
  bool checkSmaller2004(List index, int n) {
    bool s = false;
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0 && index[i] < 2004) {
        s = true;
      }
    }
    return s;
  }

  void resolve() {
    // Bài 124: Viết hàm kiểm tra trong mảng các số nguyên có tồn tại giá trị chẵn nhỏ hơn 2004 hay không
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(10000);
      index.add(i);
    }
    print(index);

    bool check = checkSmaller2004(index, n);
    if (check == true) {
      print('Co so chan nho hon 2004');
    } else {
      print('Khong tim thay');
    }
  }
}
