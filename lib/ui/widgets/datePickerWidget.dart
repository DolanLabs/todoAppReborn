part of 'widgets.dart';

Future showDatePickerWidget(BuildContext context) async {
  final initialDate = DateTime.now();
  final newDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: DateTime(DateTime.now().year - 5),
    lastDate: DateTime(DateTime.now().year + 5),
  );

  if (newDate == null) return;
}
