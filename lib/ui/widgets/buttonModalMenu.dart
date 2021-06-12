part of 'widgets.dart';

showModalMenu(BuildContext context) {
  showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
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
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "List Saya",
                          style: blackPoppins.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: Get.width,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 60,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 60.0),
                                          child: Text(
                                            'Nama List ${index.toString()}',
                                            textAlign: TextAlign.left,
                                            style: blackPoppins.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: 60,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black38,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Buat List Baru',
                                  textAlign: TextAlign.left,
                                  style: blackPoppins.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: 60,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(
                                  Icons.help_outline_rounded,
                                  color: Colors.black38,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Bantuan',
                                  textAlign: TextAlign.left,
                                  style: blackPoppins.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Kebijakan Privasi",
                              style:
                                  blackVeryPalePoppins.copyWith(fontSize: 12),
                            ),
                            Icon(
                              Icons.brightness_1,
                              size: 10,
                              color: Colors.black26,
                            ),
                            Text(
                              "Persyaratan Layanan",
                              style:
                                  blackVeryPalePoppins.copyWith(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )));
      });
}
