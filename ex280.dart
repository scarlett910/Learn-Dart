class Bai280 {
  void resolve() {
    //Bài 280: Hãy đưa số 1 về đầu mảng
    List<int> index = [2, 1, 3, 4, 5, 6, 1, 7, 8, 1];

    final List<int> index2 = [];
    final List<int> index3 = [];
    for (int i = 0; i < index.length; i++) {
      if (index[i] == 1) {
        index2.add(index[i]);
      } else {
        index3.add(index[i]);
      }
    }
    index2.addAll(index3);
    print(index2);
  }
}
