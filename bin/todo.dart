class Todo {
  List<String> list = [];

  //method1 Add Todo Item
  void addItem(String item) {
    list.add(item);
  }

  //method2 Remove Todo Item
  void removeItem(String item) {
    list.remove(item);
  }

  //method3 showAll Todo Item
  void showItem(List<String> list) {
    for (String newList in list) {
      print(newList);
    }
  }
}
