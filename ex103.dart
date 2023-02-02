import 'user_input.dart';
import 'day_in_month.dart';

// Bài 103: Viết chương trình nhập vào 1 ngày ( ngày, tháng, năm). Tìm ngày trước ngày vừa nhập (ngày, tháng, năm)
class Bai103 {
  CheckDayInMonth checkDay = CheckDayInMonth();

  void previousDay(int ngay, int thang, int nam, bool isLeapYear) {
    if (ngay == 1) {
      if (thang == 1) {
        thang = 12;
        ngay = 31;
        nam--;
      } else {
        thang--;
        if (isLeapYear == true) {
          ngay = 29;
        } else {
          ngay = checkDay.totalDayInMonth(thang, nam);
        }
      }
    } else {
      ngay--;
    }
    print('Ngay truoc do la: $ngay/$thang/$nam.');
  }

  void resolve() {
    UserInput inputOpt = UserInput();
    int nam = inputOpt.enterInput('Nhap nam:');
    int thang = inputOpt.enterInput('Nhap thang:');
    int ngay = inputOpt.enterInput('Nhap ngay:');

    if (checkDay.isLeapYear(nam) == false && ngay == 29) {
      print('ngay khong ton tai');
    } else {
      previousDay(ngay, thang, nam, checkDay.isLeapYear(nam));
    }
  }
}
