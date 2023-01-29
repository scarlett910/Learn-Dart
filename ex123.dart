import 'dart:io';
import 'dart:math';

class Bai123 {
  int smallestIndex(List index, int n) {
    int s = 0;
    for (int i = 0; i < n; i++) {
      if (index[i] < index[s]) {
        s = i;
      }
    }
    return s;
  }

  void resolve() {
    // Bài 123: Viết hàm tìm 1 vị trí mà giá trị tại vị trí đó là giá trị nhỏ nhất trong mảng 1 chiều các số nguyên
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);
    print(smallestIndex(index, n));
  }
}
