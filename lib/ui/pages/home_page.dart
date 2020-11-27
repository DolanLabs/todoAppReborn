part of 'pages.dart';

class HomePage extends StatelessWidget {
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
                  Get.showSnackbar(GetBar(
                    message: 'menu',
                    duration: Duration(milliseconds: 500),
                  ));
                },
              ),
              Container(
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
      body: Stack(
        children: [
          Container(
            color: blueBackground,
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: -1,
                  child: Image.asset(
                    'assets/right_bubble.png',
                    width: 48,
                    height: 48,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width,
                      margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
                      child: Text(
                        'Nama List',
                        style: blackPoppins.copyWith(fontSize: 24),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/ilustrasi_no_task.png',
                            width: Get.width * 0.8,
                          ),
                          SizedBox(height: 50),
                          Text(
                            'List baru ya?',
                            style: blueSharpPoppins.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Yuk tambah task baru',
                            style: blackPalePoppins.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
