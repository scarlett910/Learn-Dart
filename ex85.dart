import 'user_input.dart';

class Bai85 {
  void resolve() {
    // Bài 85: Nhập vào tháng của 1 năm. Cho biết tháng thuộc quý mấy trong năm

    UserInput inputOpt = UserInput();
    int month = inputOpt.enterInput('Nhap thang:');

    // method 1
    if ((month == 1) || (month == 2) || (month == 3)) {
      print('Quý 1');
    } else if ((month == 4) || (month == 5) || (month == 6)) {
      print('Quý 2');
    } else if ((month == 6) || (month == 7) || (month == 8)) {
      print('Quý 3');
    } else {
      print('Quý 4');
    }

    // method 2
    switch (month) {
      case 1:
      case 2:
      case 3:
        print('Quý 1');
        break;
      case 4:
      case 5:
      case 6:
        print('Quý 2');
        break;
      case 7:
      case 8:
      case 9:
        print('Quý 3');
        break;
      default:
        print('Quý 4');
    }
  }
}
