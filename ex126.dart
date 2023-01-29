import 'dart:io';
import 'dart:math';

class Bai126 {
  int totalNegativeNum(List index, int n) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
      int num = index[i];
      if (index[i] < 0) {
        sum += num;
      }
    }
    return sum;
  }

  void resolve() {
    // Bài 126: Viết hàm tính tổng các giá trị âm trong mảng 1 chiều các số thực
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(totalNegativeNum(index, n));
  }
}
