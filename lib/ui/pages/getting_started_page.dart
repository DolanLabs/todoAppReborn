part of 'pages.dart';

class GettingStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blueBackground,
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/left_path.png',
                  height: Get.height * 0.3,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/right_path.png',
                  height: Get.height * 0.25,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/ilustrasi_start.png',
                      width: Get.width * 0.8,
                    ),
                    SizedBox(height: 35),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Catat ',
                                  style: blueSharpPoppins.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Kegiatan Kamu ',
                                  style: blackPoppins.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              // width: Get.width * 0.7,
                              child: Text(
                                'Supaya ngga kelupaan sama aktifitas kamu.\nYuk! Catat segala aktifitas kamu',
                                style: blackPalePoppins.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(height: Get.height * 0.15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Get.toNamed('/home');
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff667FFF),
                                Color(0xffFF9999),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Get Started',
                                  style: whitePoppins.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
