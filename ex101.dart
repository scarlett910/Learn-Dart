import 'user_input.dart';
import 'day_in_month.dart';

// Bài 101: Viết chương trình nhập tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày
class Bai101 {
  void resolve() {
    UserInput inputOpt = UserInput();
    int nam = inputOpt.enterInput('Nhap nam:');
    int thang = inputOpt.enterInput('Nhap thang:');

    CheckDayInMonth checkDay = CheckDayInMonth();
    int dayInMonth = checkDay.totalDayInMonth(thang, nam);

    print('Thang $thang nam $nam co $dayInMonth ngay.');
  }
}
