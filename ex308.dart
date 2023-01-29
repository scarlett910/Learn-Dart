import 'dart:io';
import 'dart:math';

class Bai308 {
  void resolve() {
    //Bài 308: Tạo mảng b chỉ chứa giá trị âm từ mảng a
    List<int> index = [];
    print('Nhập số phần tử:');
    int? n = int.parse(stdin.readLineSync()!);
    var randomNumber = Random();

    while (index.length < n) {
      int i = randomNumber.nextInt(200) - 100;
      index.add(i);
    }
    print(index);
    List<int> b = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] < 0) {
        b.add(index[i]);
      }
    }
    print(b);
  }
}
