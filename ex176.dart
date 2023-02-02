import 'user_input.dart';

class Bai176 {
  void resolve() {
    //Bài 176: Hãy liệt kê các số âm trong mảng 1 chiều các số thực
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    for (int i = 0; i < list.length; i++) {
      if (list[i] < 0) {
        print(list[i]);
      }
    }
  }
}
