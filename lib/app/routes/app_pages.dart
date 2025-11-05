import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/fakta/fakta_view.dart';
import '../modules/daur/daur_view.dart';
import '../modules/tips/tips_view.dart';
import '../modules/about/about_view.dart';

class AppPages {
  static const home = '/home';
  static const fakta = '/fakta';
  static const daur = '/daur-ulang';
  static const tips = '/tips';
  static const about = '/about';

  static final routes = [
    GetPage(name: home, page: () => const HomeView()),
    GetPage(name: fakta, page: () => const FaktaView()),
    GetPage(name: daur, page: () => const DaurUlangView()),
    GetPage(name: tips, page: () => const TipsView()),
    GetPage(name: about, page: () => const AboutView()),
  ];
}
