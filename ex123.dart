import 'user_input.dart';

// Bài 123: Viết hàm tìm 1 vị trí mà giá trị tại vị trí đó là giá trị nhỏ nhất trong mảng 1 chiều các số nguyên
class Bai123 {
  int smallestIndex(List index, int n) {
    int s = 0;
    for (int i = 0; i < n; i++) {
      if (index[i] < index[s]) {
        s = i;
      }
    }
    return s;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    print(smallestIndex(list, n));
  }
}
