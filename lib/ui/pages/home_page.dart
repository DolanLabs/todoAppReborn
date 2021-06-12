part of 'pages.dart';

class HomePage extends StatelessWidget {
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Material(
        elevation: 20,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          width: Get.width,
          padding: EdgeInsets.fromLTRB(25, 8, 25, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: blackPale,
                  size: 24,
                ),
                onPressed: () {
                  showModalMenu(context);
                },
              ),
              TextButton(
                onPressed: () {
                  showModalAdd(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff667FFF),
                        Color(0xffFF9999),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
              IconButton(
                hoverColor: Colors.green,
                icon: Icon(
                  Icons.more_vert,
                  color: blackPale,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => Container(
          color: blueBackground,
          child: homePageController.getTodoList().length == 0
              ? ListBaruYaWidget()
              : ListView.builder(
                  itemCount: homePageController.getTodoList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return TodoItemWidget(
                      key: UniqueKey(),
                      task: homePageController.getTodoList()[index].task,
                      detail: homePageController.getTodoList()[index].detail,
                      onDismissed: (direction) => dismissItem(
                          context,
                          index,
                          direction,
                          homePageController.getTodoList()[index].task),
                    );
                  }),
        ),
      ),
      // ListBaruYaWidget(),
    );
  }

  void dismissItem(
    BuildContext context,
    int index,
    DismissDirection direction,
    String task,
  ) {
    switch (direction) {
      case DismissDirection.endToStart:
        homePageController.removeData(index);

        Get.showSnackbar(GetBar(
          message: "$task Terhapus",
          duration: Duration(seconds: 1),
        ));

        break;
      case DismissDirection.startToEnd:
        homePageController.removeData(index);

        Get.showSnackbar(GetBar(
          message: "$task Selesai",
          duration: Duration(seconds: 1),
        ));

        break;
      default:
        break;
    }
  }
}
