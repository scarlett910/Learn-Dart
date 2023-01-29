import 'dart:io';
import 'dart:math';

class Bai147 {
  int findLastPos(List index, int n) {
    for (int i = n - 1; i >= 0; i--) {
      if (index[i] > 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    //Bài 147: Tìm số dương cuối cùng trong mảng số thực. Nếu mảng không có giá trị dương thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findLastPos(index, n));
  }
}
