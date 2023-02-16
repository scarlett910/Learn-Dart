// Bài 182: Cho mảng 1 chiều các số thực. Hãy viết hàm liệt kê tất cả các giá trị trong mảng có ít nhất 1 lận cận trái dấu với nó
import 'user_input.dart';

class Bai182 {
  void listAll(List list, int soPhanTu) {
    int count = 0;
    for (int i = 1; i < soPhanTu - 1; i++) {
      if ((list[i] * list[i - 1] < 0) || (list[i] * list[i + 1] < 0)) {
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
