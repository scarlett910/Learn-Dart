// Bài 162: Cho mảng 1 chiều các số thực. Hãy viết hàm tìm một vị trí trong mảng thỏa 2 điều kiện: có 2 giá trị lân
//cận và giá trị tại đó bằng tích 2 giá trị lân cận. Nếu mảng không tồn tại giá trị như vậy thì trả về giá trị -1

import 'user_input.dart';

class Bai162 {
  int timGiaTri(List mang, int soPhanTu) {
    for (int i = 1; i < soPhanTu - 1; i++) {
      if (mang[i] == mang[i - 1] * mang[i + 1]) {
        return mang[i];
      }
    }
    return -1;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int a = timGiaTri(list, n);
    print('Giá trị cần tìm là $a');
  }
}
