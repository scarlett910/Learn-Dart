// Bài 161: Cho mảng 1 chiều các số nguyên, hãy tìm giá trị đầu tiên nằm trong khoảng [x, y] cho trước. Nếu mảng không có giá trị thỏa điều kiện trên thì trả về -1
import 'user_input.dart';

class Bai161 {
  int timGiaTri(List mang, int soPhanTu, int x, int y) {
    for (int i = 0; i < soPhanTu; i++) {
      if (mang[i] > x && mang[i] < y) {
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
    int x = inputOpt.enterInput('Nhap gia tri x:');
    int y = inputOpt.enterInput('Nhap gia tri y:');
    int a = timGiaTri(list, n, x, y);
    print('Giá trị đầu tiên nằm trong khoảng [x, y] cho trước cần tìm là $a');
  }
}
