part of 'controllers.dart';

class HomePageController extends GetxController {
  final todoList = <Todo>[].obs;
  final todo = Todo().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void addData(Todo todo) {
    this.todoList.add(todo);
  }

  void removeData(int index) {
    this.todoList.removeAt(index);
  }

  List<Todo> getTodoList() {
    return this.todoList;
  }
}
