class Bai176 {
  void resolve() {
    //Bài 176: Hãy liệt kê các số âm trong mảng 1 chiều các số thực
    List<int> index = [1, 2, -3, -4, 5, 6, -7, 8, -9];

    for (int i = 0; i < index.length; i++) {
      if (index[i] < 0) {
        print(index[i]);
      }
    }
  }
}
