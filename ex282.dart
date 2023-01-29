import 'dart:io';
import 'dart:math';

class Bai282 {
  void resolve() {
    //Bài 282: Đưa các số chia hết cho 3 về đầu mảng
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(100);
      index.add(i);
    }
    print(index);

    final List<int> index2 = [];
    final List<int> index3 = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] % 3 == 0) {
        index2.add(index[i]);
      } else {
        index3.add(index[i]);
      }
    }
    index2.addAll(index3);
    print(index2);
  }
}
