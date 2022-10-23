import 'package:get/get.dart';
import '../Pages/NavigationBar.dart';
import '../Pages/Detail.dart';
import '../MiddleWare/MD_Detail.dart';

// List<GetPage<dynamic>> routes = [
//   GetPage(name: '/', page: () => const NavigationPage()),
//   GetPage(name: '/detail', page: () => const DetailPage())
// ];

class AppRouter {
  static final routes = [
    GetPage(name: '/', page: () => const NavigationPage()),
    GetPage(
        name: '/detail',
        page: () => const DetailPage(),
        middlewares: [MD_Detail()])
  ];
}
