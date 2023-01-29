import 'dart:io';

class Bai101 {
  void resolve() {
    // Bài 101: Viết chương trình nhập tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày
    print('Nhap nam:');
    int? nam = int.parse(stdin.readLineSync()!);

    print('Nhap thang:');
    int? thang = int.parse(stdin.readLineSync()!);

    bool isLeapYear(int nam) {
      if (nam % 400 == 0 || (nam % 4 == 0 && nam % 100 != 0)) {
        return true;
      } else {
        return false;
      }
    }

    switch (thang) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        print('31 ngay');
        break;
      case 4:
      case 6:
      case 9:
      case 11:
        print('30 ngay');
        break;
      default:
        if (isLeapYear(nam) == true) {
          print('29 ngay');
        } else {
          print('28 ngay');
        }
    }
  }
}
