part of 'models.dart';

class Todo {
  Todo({
    this.task,
    this.detail,
  });

  String task;
  String detail;

  Todo copyWith({
    String task,
    String detail,
  }) =>
      Todo(
        task: task ?? this.task,
        detail: detail ?? this.detail,
      );
}
