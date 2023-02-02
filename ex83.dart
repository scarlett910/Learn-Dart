import 'user_input.dart';

class Bai83 {
  void resolve() {
    //Bài 83: Viết chương trình nhập 2 số thực, kiểm tra xem chúng có cùng dấu hay không

    UserInput inputOpt = UserInput();
    int d = inputOpt.enterInput('Nhap so c:');
    int e = inputOpt.enterInput('Nhap so d:');

    //method 1
    if ((d < 0 && e < 0) || (d > 0 && e > 0)) {
      print('Hai số cùng dấu');
    } else {
      print('Hai số khác dấu');
    }

    //method 2
    if (d * e > 0) {
      print('Hai số cùng dấu');
    } else {
      print('Hai số khác dấu');
    }
  }
}
