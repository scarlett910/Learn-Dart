// Bài 167: Hãy tìm giá trị thỏa điều kiện toàn chữ số lẻ
//và là giá trị lớn nhất thỏa điều kiện ấy trong mảng 1 chiều các số nguyên.
//Nếu mảng không có giá trị thỏa điều kiện trên thì trả về 0
import 'user_input.dart';

class Bai167 {
  bool checkAllOdd(int a) {
    if (a % 2 != 0) {
      int chuSoDau = a ~/ 10;
      if (chuSoDau % 2 != 0) {
        return true;
      }
    }
    return false;
  }

  int findLargestAllOdd(List mang, int soPhanTu) {
    List<int> a = [];
    for (int i = 0; i < soPhanTu; i++) {
      if (checkAllOdd(mang[i]) == true) {
        a.add(mang[i]);
      }
    }
    int max = a[0];
    for (int j = 0; j < a.length; j++) {
      if (max < a[j]) {
        max = a[j];
      }
    }
    return max;
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    int giaTriCanTim = findLargestAllOdd(list, n);
    print(
        'Giá trị thỏa điều kiện toàn chữ số lẻ và là giá trị lớn nhất thỏa điều kiện ấy trong mảng 1 chiều các số nguyên là $giaTriCanTim');
  }
}
