import 'user_input.dart';

class Bai308 {
  void resolve() {
    //Bài 308: Tạo mảng b chỉ chứa giá trị âm từ mảng a
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> a = inputOpt.createIntList(soPhanTu: n);
    print(a);
    List<int> b = [];
    for (int i = 0; i < a.length; i++) {
      if (a[i] < 0) {
        b.add(a[i]);
      }
    }
    print(b);
  }
}
