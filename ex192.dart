// Bài 192: Hãy liệt kê các  giá trị trong mảng 1 chiều các số nguyên có chữ số đầu tiên là số chẵn
import 'user_input.dart';

class Bai192 {
  void listAll(List list, int soPhanTu) {
    int count = 0;
    for (int i = 0; i < soPhanTu; i++) {
      int chuSoDau = list[i] ~/ 10;
      if (chuSoDau % 2 == 0 && chuSoDau != 0 && chuSoDau != 1) {
        count = 1;
        print(list[i]);
      }
    }
    if (count == 0) {
      print('Mang khong co gia tri do');
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
