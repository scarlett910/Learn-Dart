import 'user_input.dart';

class Bai282 {
  void resolve() {
    //Bài 282: Đưa các số chia hết cho 3 về đầu mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);

    final List<int> list2 = [];
    final List<int> list3 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] % 3 == 0) {
        list2.add(list[i]);
      } else {
        list3.add(list[i]);
      }
    }
    list2.addAll(list3);
    print(list2);
  }
}
