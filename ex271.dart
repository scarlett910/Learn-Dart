import 'dart:io';

class Bai271 {
  void resolve() {
    //Bài 271: Xóa các phần tử có chỉ số k trong mảng
    List<int> index = [1, 2, 3, 4, 5, 6, 7, 8];

    print('Nhap k: ');
    int? k = int.parse(stdin.readLineSync()!);

    List<int> index2 = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] != k) {
        index2.add(index[i]);
      }
    }
    print(index2);
  }
}
