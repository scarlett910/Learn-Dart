import 'user_input.dart';

class Bai307 {
  void resolve() {
    //Bài 307: Tạo mảng b chỉ chứa giá trị lẻ từ mảng a
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> a = inputOpt.createIntList(soPhanTu: n);
    print(a);
    List<int> b = [];

    for (int i = 0; i < a.length; i++) {
      if (a[i] % 2 != 0) {
        b.add(a[i]);
      }
    }
    print(b);
  }
}
