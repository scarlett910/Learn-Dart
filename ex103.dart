import 'dart:io';

class Bai103 {
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

  void previousDay(int ngay, int thang, int nam) {
    // int dayInMonth = totalDayInMonth(thang, nam);
    if (ngay == 1) {
      if (thang == 1) {
        thang = 12;
        ngay = 31;
        nam--;
      } else {
        thang--;
        if (isLeapYear(nam) == true) {
          ngay = 29;
        } else {
          ngay = totalDayInMonth(thang, nam);
        }
      }
    } else {
      ngay--;
    }
    print(ngay);
    print(thang);
    print(nam);
  }

  void resolve() {
    // Bài 103: Viết chương trình nhập vào 1 ngày ( ngày, tháng, năm). Tìm ngày trước ngày vừa nhập (ngày, tháng, năm)
    print('Nhap nam:');
    int nam = int.parse(stdin.readLineSync()!);

    print('Nhap thang:');
    int thang = int.parse(stdin.readLineSync()!);

    print('Nhap ngay:');
    int ngay = int.parse(stdin.readLineSync()!);
    if (isLeapYear(nam) == false && ngay == 29) {
      print('ngay khong ton tai');
    } else {
      previousDay(ngay, thang, nam);
    }
  }
}
