import 'dart:io';
import 'dart:math';

class Bai140 {
  int findPos(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] > 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findSmallestPos(List index, int n) {
    int s = findPos(index, n);
    if (s == -1) {
      return -1;
    }
    for (int i = 0; i < n; i++) {
      if (index[i] > 0 && index[i] < s) {
        s = index[i];
      }
    }
    return s;
  }

  void resolve() {
    // Bài 140: Hãy tìm giá trị dương nhỏ nhất trong mảng 1 chiều các số thực. Nếu mảng không có giá trị dương thì sẽ trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findSmallestPos(index, n));
  }
}
