// Bài 193: Cho mảng 1 chiều các số nguyên. Hãy viết hàm liệt kê các giá trị trong mảng có dạng 3^k. Nếu mảng không có giá trị đó thì trả về 0
import 'user_input.dart';

class Bai193 {
  int checkIf3K(int a) {
    if (a <= 1) {
      return 0;
    }
    while (a > 1) {
      if (a % 3 != 0) {
        return 0;
      }
      a ~/= 3;
    }
    return 1;
  }

  void listAll3K(List mang, int soPhanTu) {
    int count = 0;
    for (int i = 0; i < soPhanTu; i++) {
      if (checkIf3K(mang[i]) == 1) {
        count = 1;
        print(mang[i]);
      }
    }
    if (count == 0) {
      print('Mang khong co gia tri do');
    }
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    listAll3K(list, n);
  }
}
