part of 'shared.dart';

class AppRoute {
  static List<GetPage> getPages() => [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: "/getting_started", page: () => GettingStartedPage()),
      ];
}
