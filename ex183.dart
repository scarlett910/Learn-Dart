// Bài 183: Hãy liệt kê các vị trí mà giá trị tại đó là giá trị lớn nhất trong mảng 1 chiều các số thực
import 'user_input.dart';

class Bai183 {
  int findMax(List list, int n) {
    int max = list[0];
    for (int i = 0; i < n; i++) {
      if (list[i] > max) {
        max = list[i];
      }
    }
    return max;
  }

  void listMaxNumberIndex(List list, int soPhanTu) {
    int max = findMax(list, soPhanTu);
    for (int i = 0; i < soPhanTu; i++) {
      if (list[i] == max) {
        print(i);
      }
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    listMaxNumberIndex(list, n);
  }
}
