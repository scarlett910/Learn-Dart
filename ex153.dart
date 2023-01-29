import 'dart:io';
import 'dart:math';

class Bai153 {
  int findEven(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  int findSmallestEven(List index, int n) {
    int s = index[0];
    if (findEven(index, n) == -1) {
      return -1;
    } else {
      for (int i = 0; i < n; i++) {
        if (index[i] % 2 == 0 && index[i] < s) {
          s = index[i];
        }
      }
      return s;
    }
  }

  void resolve() {
    //Bài 153: Hãy tìm giá trị chẵn nhỏ nhất trong mảng 1 chiều các số nguyên. Nếu mảng không có số chẵn thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findSmallestEven(index, n));
  }
}
