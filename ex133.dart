import 'user_input.dart';

class Bai133 {
  void listNegative(List index, int n) {
    for (int i = 0; i < n; i++) {
      if (index[i] < 0) {
        print(i);
      }
    }
  }

  void resolve() {
    // Bài 133: Viết hàm liệt kê các vị trí mà giá trị tại đó là giá trị âm trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listNegative(list, n);
  }
}
