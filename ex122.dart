import 'dart:io';
import 'dart:math';

class Bai122 {
  int largestIndex(List index, int n) {
    int l = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] > l) {
        l = index[i];
      }
    }
    return l;
  }

  void resolve() {
    // Bài 122: Viết hàm tìm giá trị lớn nhất trong mảng 1 chiều các số thực
    print('Nhap so phan tu:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();
    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    print(largestIndex(index, n));
  }
}
