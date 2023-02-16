// Bài 160: Cho mảng 1 chiều các số thực, hãy tìm giá trị âm cuối cùng lớn hơn giá trị -10. Nếu mảng không có giá trị thỏa điều kiện trên thì trả về -1
import 'user_input.dart';

class Bai160 {
  int timGiaTri(List mang, int soPhanTu) {
    for (int i = soPhanTu - 1; i >= 0; i--) {
      if (mang[i] > -10 && mang[i] < 0) {
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
