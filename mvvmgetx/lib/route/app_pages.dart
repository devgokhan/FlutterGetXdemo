import 'package:get/get.dart';
import 'package:mvvmgetx/features/home/binding/homeBinding.dart';
import 'package:mvvmgetx/features/home/view/homeView.dart';
import 'package:mvvmgetx/features/nextDetail/binding/nextDetailBinding.dart';
import 'package:mvvmgetx/features/nextDetail/view/nextDetailView.dart';
import 'package:mvvmgetx/features/nextDetail/viewModel/nextDetailViewModel.dart';
import 'package:mvvmgetx/features/splash/view/splashView.dart';
import 'package:mvvmgetx/route/app_routes.dart';



class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding()
    ),
    GetPage(
        name: AppRoutes.nextDetail,
        page: () => NextDetailView(),
        binding: NextDetailBinding(),
        transition: Transition.zoom
    ),

  ];
}
