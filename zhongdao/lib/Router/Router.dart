import 'package:get/get.dart';
import '../Components/tab_bar.dart';
import '../Pages/login.dart';

class AppRouter {
  static final routes = [
    GetPage(name: '/', page: () => const TabBar()),
    GetPage(name: '/login', page: () => const Login()),
  ];
}
