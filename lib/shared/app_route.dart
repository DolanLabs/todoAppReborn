part of 'shared.dart';

class AppRoute {
  static List<GetPage> getPages() => [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/getting_started', page: () => GettingStartedPage()),
      ];
}
