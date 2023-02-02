import 'user_input.dart';

class Bai124 {
  bool checkSmaller2004(List index, int n) {
    bool s = false;
    for (int i = 0; i < n; i++) {
      if (index[i] % 2 == 0 && index[i] < 2004) {
        s = true;
      }
    }
    return s;
  }

  void resolve() {
    // Bài 124: Viết hàm kiểm tra trong mảng các số nguyên có tồn tại giá trị chẵn nhỏ hơn 2004 hay không
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    bool check = checkSmaller2004(list, n);
    if (check == true) {
      print('Co so chan nho hon 2004');
    } else {
      print('Khong tim thay');
    }
  }
}
