// Bài 197: Hãy liệt kê các giá trị trong mảng các số nguyên có chữ số đầu tiên là chữ số lẻ
import 'user_input.dart';

class Bai197 {
  void listAll(List list, int soPhanTu) {
    int count = 0;
    for (int i = 0; i < soPhanTu; i++) {
      int chuSoDau = list[i] ~/ 10;
      if (chuSoDau % 2 != 0) {
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
