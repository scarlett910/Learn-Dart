// Bài 165: Cho mảng 1 chiều các số nguyên. Hãy tìm giá trị đầu tiên có chữ số đầu tiên là chữ số lẻ
import 'user_input.dart';

class Bai165 {
  int timGiaTri(List mang, int soPhanTu) {
    for (int i = 0; i < soPhanTu; i++) {
      int chuSoDau = mang[i] ~/ 10;
      if (chuSoDau % 2 != 0 || mang[i] % 2 != 0) {
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
    print('Giá trị đầu tiên có chữ số đầu tiên là chữ số lẻ cần tìm là $a');
  }
}
