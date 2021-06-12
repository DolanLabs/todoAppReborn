part of 'widgets.dart';

class ListBaruYaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
