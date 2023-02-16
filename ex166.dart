// Bài 166: Cho mảng 1 chiều các số nguyên.
//Hãy viết hàm tìm giá trị đầu tiên trong mảng có dạng 2^k. Nếu mảng không có giá trị dạng 2k thì hàm sẽ trả về 0
import 'user_input.dart';

class Bai166 {
  bool checkIf2K(int a) {
    if (a <= 1) {
      return false;
    }
    while (a > 1) {
      if (a % 2 != 0) {
        return false;
      }
      a ~/= 2;
    }
    return true;
  }

  int timGiaTri2K(List mang, int soPhanTu) {
    for (int i = 0; i < soPhanTu; i++) {
      if (checkIf2K(mang[i]) == true) {
        return mang[i];
      }
    }
    return 0;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int a = timGiaTri2K(list, n);
    print('Giá trị đầu tiên trong mảng có dạng 2^k là $a');
  }
}
