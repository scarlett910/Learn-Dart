// Bài 186: Hãy liệt kê các vị trí trong mảng 1 chiều các số thực mà giá trị tại đó bằng giá trị âm trong mảng
import 'user_input.dart';

class Bai186 {
  void listAllNegNumndex(List list, int soPhanTu) {
    for (int i = 0; i < soPhanTu; i++) {
      if (list[i] < 0) {
        print(i);
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    listAllNegNumndex(list, n);
  }
}
