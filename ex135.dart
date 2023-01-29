import 'dart:io';
import 'dart:math';

class Bai135 {
  int findFirstPos(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] > 0) {
        return index[i];
      }
    }
    return -1;
  }

  void resolve() {
    // Bài 135: Viết hàm tìm giá trị dương đầu tiên trong mảng 1 chiều các số thực. Nếu mảng không có giá trị dương thì trả về -1
    print('Nhap n:');
    int? n = int.parse(stdin.readLineSync()!);
    List<int> index = [];
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);

    print(findFirstPos(index, n));
  }
}
