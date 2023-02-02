import 'user_input.dart';

class Bai134 {
  int findLargest(List index, int n) {
    int b = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] > b) {
        b = index[i];
      }
    }
    return b;
  }

  void resolve() {
    // Bài 134: Viết hàm tìm giá trị lớn nhất trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(findLargest(list, n));
  }
}
