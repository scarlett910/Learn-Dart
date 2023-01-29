import 'dart:io';
import 'dart:math';

class Bai136 {
  int findLastEven(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 136: Tìm số chẵn cuối cùng trong mảng 1 chiều các số nguyên. Nếu mảng không có giá trị chẵn thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findLastEven(index, n));
  }
}
