// Bài 159: Cho mảng 1 chiều các số thực, hãy tìm giá trị đầu tiên lớn hơn giá trị 133. Nếu mảng không có giá trị thỏa điều kiện trên thì trả về -1
import 'user_input.dart';

class Bai159 {
  int timGiaTri(List mang, int soPhanTu) {
    for (int i = 0; i < soPhanTu; i++) {
      if (mang[i] > 133) {
        return mang[i];
      }
    }
    return -1;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createOnlyPosIntList(soPhanTu: n);
    print(list);

    int a = timGiaTri(list, n);
    print('Giá trị cần tìm là $a');
  }
}
