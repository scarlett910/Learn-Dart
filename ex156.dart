// Bài 156: Hãy tìm giá trị trong mảng các số thực gần giá trị x nhất

import 'user_input.dart';

class Bai156 {
  List<int> taoMang(List list, int soPhanTu, int x) {
    List<int> mang = [];
    for (int i = 0; i < soPhanTu; i++) {
      int khoangGiaTri = (list[i] - x);
      mang.add(khoangGiaTri.abs());
    }
    return mang;
  }

  int timGiaTri(List mang, int soPhanTu) {
    int min = mang[0];
    for (int i = 1; i < soPhanTu; i++) {
      if (mang[i] < min) {
        min = mang[i];
      }
    }
    return min;
  }

  void xuatKetQua(List list, List mang, int soPhanTu) {
    print("Gia tri trong mang gan gia tri x nhat la: ");
    int min = timGiaTri(mang, soPhanTu);
    for (int i = 0; i < soPhanTu; i++) {
      if (mang[i] == min) {
        print(list[i]);
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
