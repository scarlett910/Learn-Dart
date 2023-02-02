import 'user_input.dart';

class Bai79 {
  void resolve() {
    //Bài 79: Hãy đếm số lượng chữ số của số nguyên dương n

    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap n:');

    int dem = 0;

    while (n != 0) {
      dem++;
      n = n ~/ 10;
    }
    print(dem);
  }
}
