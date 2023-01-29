import 'dart:io';
import 'dart:math';

class Bai281 {
  void resolve() {
    //Bài 281: Hãy đưa chẵn về đầu, lẻ về cuối, phần tử 0 nằm giữa mảng
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
    final List<int> index4 = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] % 2 == 0 && index[i] != 0) {
        index2.add(index[i]);
      } else if (index[i] == 0) {
        index3.add(index[i]);
      } else {
        index4.add(index[i]);
      }
    }

    index2.addAll(index3);
    index2.addAll(index4);
    print(index2);
  }
}
