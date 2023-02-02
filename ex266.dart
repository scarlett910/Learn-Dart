import 'user_input.dart';

class Bai266 {
  void resolve() {
    //Bài 266: Thêm 1 phần tử x vào mảng tại vị trí k

    UserInput inputOpt = UserInput();
    int n = inputOpt.enterInput('Nhap so phan tu:');
    List<int> list = inputOpt.createIntList(soPhanTu: n);
    print(list);
    int x = inputOpt.enterInput('Nhap gia tri:');
    int k = inputOpt.enterInput('Nhap vi tri:');

    k -= 1;
    List<int> list2 = [];
    //Thêm các phần tử từ vị trí 0 -> k
    for (int i = 0; i < k; i++) {
      list2.add(list[i]);
    }

    //Them gia tri x
    list2.add(x);

    //Thêm các phần tử từ k -> hết
    for (int j = k; j < list.length; j++) {
      list2.add(list[j]);
    }
    print(list2);
  }
}
