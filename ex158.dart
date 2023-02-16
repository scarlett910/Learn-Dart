// Bài 158: Cho mảng 1 chiều các số thực, hãy tìm giá trị x sao cho đoạn [-x, x] chứa tất cả các giá trị trong mảng
import 'user_input.dart';

class Bai158 {
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

  int timGiaTriX(List mang, int soPhanTu) {
    int min = timGiaTriNhoNhat(mang, soPhanTu);
    int max = timGiaTriLonNhat(mang, soPhanTu);
    int x = -max;
    if (x <= min) {
      x = -max;
    } else {
      while (x > min) {
        x--;
      }
    }
    return -x;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int x = timGiaTriX(list, n);
    print(
        'Giá trị x cần tìm là $x để đoạn [-x, x] chứa tất cả các giá trị trong mảng');
  }
}
