// Bài 194: Cho mảng 1 chiều các số nguyên có nhiều hơn 2 giá trị. Hãy viết hàm liệt kê các cặp giá trị gần nhau nhất
import 'user_input.dart';

class Bai194 {
  void listAll(List list, int soPhanTu) {
    int khoangCachGanNhat = (list[0] - list[1]);
    khoangCachGanNhat = khoangCachGanNhat.abs();
    for (int i = 0; i < soPhanTu; i++) {
      for (int j = i + 1; j < soPhanTu - 1; j++) {
        int khoangCanh = list[i] - list[j];
        if (khoangCanh.abs() < khoangCachGanNhat) {
          khoangCachGanNhat = khoangCanh.abs();
        }
      }
    }

    for (int i = 0; i < soPhanTu; i++) {
      for (int j = i + 1; j < soPhanTu - 1; j++) {
        int khoangCanh = list[i] - list[j];
        if (khoangCanh.abs() == khoangCachGanNhat) {
          print(list[i]);
          print(list[j]);
        }
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    listAll(list, n);
  }
}
