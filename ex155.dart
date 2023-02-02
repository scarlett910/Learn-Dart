// Bài 155: Hãy tìm giá trị trong mảng các số thực xa giá trị x nhất

import 'user_input.dart';

class Bai155 {
  List<int> taoMang(List index, int n, int x) {
    List<int> b = [];
    for (int i = 0; i < n; i++) {
      int j = (index[i] - x);
      b.add(j.abs());
    }
    return b;
  }

  int timGiaTri(List b, int n) {
    int max = b[0];
    for (int i = 1; i < n; i++) {
      if (b[i] > max) {
        max = b[i];
      }
    }
    return max;
  }

  void xuatKetQua(List index, List b, int n) {
    print("Gia tri trong mang xa gia tri x nhat la: ");
    int max = timGiaTri(b, n);
    for (int i = 0; i < n; i++) {
      if (b[i] == max) {
        print(index[i]);
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int x = inputOpt.enterInput('Nhap gia tri x:');
    List b = taoMang(list, n, x);
    print(b);
    xuatKetQua(list, b, n);
  }
}
