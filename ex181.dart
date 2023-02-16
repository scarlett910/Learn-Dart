// Bài 181: Cho mảng 1 chiều các số nguyên. Hãy viết hàm liệt kê các giá trị chẵn có ít nhất 1 lân cận cũng là giá trị chẵn
import 'user_input.dart';

class Bai181 {
  void listAll(List list, int soPhanTu) {
    int count = 0;
    for (int i = 1; i < soPhanTu - 1; i++) {
      if (list[i] % 2 == 0 && (list[i - 1] % 2 == 0 || list[i + 1] % 2 == 0)) {
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
