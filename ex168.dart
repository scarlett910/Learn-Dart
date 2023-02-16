// Bài 168: Cho mảng 1 chiều các số nguyên. Hãy viết hàm tìm giá trị lớn nhất trong mảng có dạng 5^k.
//Nếu mảng khong tồn tại giá trị 5^k thì hàm sẽ trả về 0
import 'user_input.dart';

class Bai168 {
  bool checkIf5K(int a) {
    if (a <= 1) {
      return false;
    }
    while (a > 1) {
      if (a % 5 != 0) {
        return false;
      }
      a ~/= 5;
    }
    return true;
  }

  int findLargest5K(List mang, int soPhanTu) {
    List<int> a = [];
    for (int i = 0; i < soPhanTu; i++) {
      if (checkIf5K(mang[i]) == true) {
        a.add(mang[i]);
      } else {
        return 0;
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
    List<int> list = inputOpt.createOnlyPosIntList(soPhanTu: n);
    print(list);

    int giaTriCanTim = findLargest5K(list, n);
    print('Giá trị lớn nhất trong mảng có dạng 5^k là $giaTriCanTim');
  }
}
