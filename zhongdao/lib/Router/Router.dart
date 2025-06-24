import 'package:get/get.dart';
import '../Components/tab_bar.dart';

class AppRouter {
  static final routes = [GetPage(name: '/', page: () => const TabBar())];
}
