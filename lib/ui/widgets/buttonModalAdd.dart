part of 'widgets.dart';

showModalAdd(BuildContext context) {
  final HomePageController homePageController = Get.put(HomePageController());

  TextEditingController taskController = TextEditingController();
  TextEditingController detailController = TextEditingController();

  showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: Get.height / 4,
            decoration: BoxDecoration(
              color: blueBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 32.0,
                  right: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   "Task baru",
                    //   style: blackPalePoppins.copyWith(
                    //       fontSize: 16, fontWeight: FontWeight.w600),
                    // ),
                    TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Task Baru ...'),
                    ),
                    // SizedBox(height: 20),
                    TextField(
                      controller: detailController,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Detail ...'),
                    ),
                    // Text(
                    //   "Detail ...",
                    //   style: blackVeryPalePoppins.copyWith(
                    //       fontSize: 14, fontWeight: FontWeight.w600),
                    // ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 40,
                          child: TextButton(
                            child: Icon(Icons.calendar_today_outlined),
                            onPressed: () {
                              showDatePickerWidget(context);
                            },
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            homePageController.addData(Todo(
                              task: taskController.text,
                              detail: detailController.text,
                            ));
                            Get.back();
                          },
                          child: Text(
                            "Simpan",
                            style: blackVeryPalePoppins.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ],
                )));
      });
}
