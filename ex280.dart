import 'user_input.dart';

class Bai280 {
  void resolve() {
    //Bài 280: Hãy đưa số 1 về đầu mảng
    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    list.add(1);
    print(list);

    final List<int> list2 = [];
    final List<int> list3 = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i] == 1) {
        list2.add(list[i]);
      } else {
        list3.add(list[i]);
      }
    }
    list2.addAll(list3);
    print(list2);
  }
}
