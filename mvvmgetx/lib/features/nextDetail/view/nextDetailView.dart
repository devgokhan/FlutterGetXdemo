
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mvvmgetx/features/home/viewModel/homeViewModel.dart';
import 'package:mvvmgetx/features/nextDetail/viewModel/nextDetailViewModel.dart';
import 'package:mvvmgetx/route/app_pages.dart';
import 'package:mvvmgetx/route/app_routes.dart';

class NextDetailView extends GetView<NextDetailViewModel> {

  @override
  Widget build(BuildContext context) {

    controller.fetchSampleApi();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(onPressed: () => { controller.increment() }, child: Text("+"),),
            FlatButton(onPressed: () => { Get.back() }, child: Text('Back'),),
            FlatButton(onPressed: () => { Get.offNamed(AppRoutes.home) }, child: Text('To Home'),),
            Obx(() => Text(
                '${controller.apiOutput}',
            ),),
          ],
        ),
      ),
    );
  }

}