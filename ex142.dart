import 'user_input.dart';

class Bai142 {
  int findSmallest(List index, int n) {
    int s = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] < s) {
        s = index[i];
      }
    }
    return s;
  }

  void resolve() {
    // Bài 142: Tìm giá trị nhỏ nhất trong mảng 1 chiều số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findSmallest(list, n));
  }
}
