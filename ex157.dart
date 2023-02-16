// Bài 157: Cho mảng 1 chiều các số thực, hãy tìm đoạn [a, b] sao cho đoạn này chứa tất cả các giá trị trong mảng

import 'user_input.dart';

class Bai157 {
  int timGiaTriLonNhat(List mang, int soPhanTu) {
    int max = mang[0];
    for (int i = 0; i < soPhanTu; i++) {
      if (mang[i] > max) {
        max = mang[i];
      }
    }
    return max;
  }

  int timGiaTriNhoNhat(List mang, int soPhanTu) {
    int min = mang[0];
    for (int i = 1; i < soPhanTu; i++) {
      if (mang[i] < min) {
        min = mang[i];
      }
    }
    return min;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int a = timGiaTriNhoNhat(list, n);
    int b = timGiaTriLonNhat(list, n);
    print('Đoạn [$a, $b] chứa tất cả các giá trị trong mảng được cho');
  }
}
