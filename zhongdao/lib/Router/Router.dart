import 'package:get/get.dart';
import '../Components/TabBar.dart';

class AppRouter {
  static final routes = [GetPage(name: '/', page: () => const TabBar())];
}
