part of 'widgets.dart';

class TodoItemWidget extends StatelessWidget {
  final String task;
  final String detail;
  final DismissDirectionCallback onDismissed;

  const TodoItemWidget({Key key, this.task, this.detail, this.onDismissed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 25,
        right: 25,
      ),
      child: Dismissible(
        key: key,
        onDismissed: onDismissed,
        background: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.green,
          child: Icon(Icons.check, color: Colors.white, size: 32),
        ),
        secondaryBackground: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.red,
          child: Icon(Icons.delete_forever, color: Colors.white, size: 32),
        ),
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: Text(
                  task,
                  style: blackPoppins.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Text(
                  detail,
                  style: blackPalePoppins.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
