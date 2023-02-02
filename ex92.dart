import 'user_input.dart';

class Bai92 {
  void resolve() {
    // Bài 92: Tìm ước số chung lớn nhất của 2 số nguyên dương
    UserInput inputOpt = UserInput();
    int somot = inputOpt.enterInput('Nhap so nguyen duong 1:');
    int sohai = inputOpt.enterInput('Nhap so nguyen duong 2:');

    while (somot != sohai) {
      if (somot > sohai) {
        somot -= sohai;
      } else {
        sohai -= somot;
      }
    }
    print(somot);
  }
}
