import 'dart:io';

class Bai266 {
  void resolve() {
    //Bài 266: Thêm 1 phần tử x vào mảng tại vị trí k

    List<int> index = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    print('Nhap gia tri: ');
    int? x = int.parse(stdin.readLineSync()!);

    print('Nhap vi tri: ');
    int? k = int.parse(stdin.readLineSync()!);
    k -= 1;
    List<int> index2 = [];
    //Thêm các phần tử từ vị trí 0 -> k
    for (int i = 0; i < k; i++) {
      index2.add(index[i]);
    }

    //Them gia tri x
    index2.add(x);

    //Thêm các phần tử từ k -> hết
    for (int j = k; j < index.length; j++) {
      index2.add(index[j]);
    }
    print(index2);
  }
}
