import 'dart:io';
import 'dart:math';

class Bai138 {
  int findFirstEven(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 138: Tìm vị trí của giá trị chẵn đầu tiên trong mảng 1 chiều các số nguyên. Nếu mảng không có giá trị chẵn thì sẽ trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findFirstEven(index, n));
  }
}