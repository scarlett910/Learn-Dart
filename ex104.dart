import 'dart:io';

class Bai104 {
  bool isLeapYear(int nam) {
    if (nam % 400 == 0 || (nam % 4 == 0 && nam % 100 != 0)) {
      return true;
    } else {
      return false;
    }
  }

  int totalDayInMonth(int thang, int nam) {
    int dayInMonth = 0;
    switch (thang) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        dayInMonth = 31;
        break;
      case 4:
      case 6:
      case 9:
      case 11:
        dayInMonth = 30;
        break;
      default:
        if (isLeapYear(nam) == true) {
          dayInMonth = 29;
        } else {
          dayInMonth = 28;
        }
    }
    return dayInMonth;
  }

  void resolve() {
    // Bài 104: Viết chương trình nhập ngày, tháng, năm. Tính xem ngày đó là ngày thứ bao nhiêu trong năm
    print('Nhap nam:');
    int nam = int.parse(stdin.readLineSync()!);

    print('Nhap thang:');
    int thang = int.parse(stdin.readLineSync()!);

    print('Nhap ngay:');
    int ngay = int.parse(stdin.readLineSync()!);

    // total = ngay + for-loop(totalDayInMonth(thang, nam))
    if (isLeapYear(nam) == false && ngay == 29) {
      print('ngay ko ton tai');
    } else {
      int total = 0;
      for (int month = 1; month < thang; month++) {
        total += totalDayInMonth(month, nam);
      }
      total = ngay + total;
      print(total);
    }
  }
}
