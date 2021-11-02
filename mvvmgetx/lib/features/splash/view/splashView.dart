import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmgetx/features/splash/viewModel/splashViewModel.dart';
import 'package:mvvmgetx/route/app_pages.dart';
import 'package:mvvmgetx/route/app_routes.dart';

class SplashView extends GetView {

  SplashViewModel controller = Get.put( SplashViewModel() );

  @override
  Widget build(BuildContext context) {

    controller.test();

    return Scaffold(

      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(onPressed: () => { Get.offAllNamed(AppRoutes.home) }, child: Text('To Home'),),
          ],
        ),
      ),
    );
  }

}