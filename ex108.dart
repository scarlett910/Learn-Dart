import 'user_input.dart';

class Bai108 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int x = inputOpt.enterInput('Nhap x:');
    int y = inputOpt.enterInput('Nhap y:');
    int so = 1;
    for (int i = 0; i < y; i++) {
      so = so * x;
    }
    print(so);
  }
}
