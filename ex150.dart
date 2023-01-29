import 'dart:io';
import 'dart:math';

class Bai150 {
  int findNeg(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findLargestNeg(List index, int n) {
    int b = findNeg(index, n);
    if (b == -1) {
      return -1;
    }
    for (int i = 0; i < n; i++) {
      if (index[i] < 0 && index[i] > b) {
        b = index[i];
      }
    }
    return b;
  }

  void resolve() {
    //Bài 150: Hãy tìm giá trị âm lớn nhất trong mảng 1 chiều các số thực. Nếu mảng không có giá trị âm thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findLargestNeg(index, n));
  }
}
