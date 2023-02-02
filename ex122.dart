import 'user_input.dart';

class Bai122 {
  int largestIndex(List index, int n) {
    int l = index[0];
    for (int i = 0; i < n; i++) {
      if (index[i] > l) {
        l = index[i];
      }
    }
    return l;
  }

  void resolve() {
    // Bài 122: Viết hàm tìm giá trị lớn nhất trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    print(largestIndex(list, n));
  }
}
