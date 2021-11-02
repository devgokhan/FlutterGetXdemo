
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mvvmgetx/features/home/viewModel/homeViewModel.dart';
import 'package:mvvmgetx/features/nextDetail/viewModel/nextDetailViewModel.dart';
import 'package:mvvmgetx/main.dart';
import 'package:mvvmgetx/route/app_routes.dart';

class HomeView extends GetView<HomeViewModel> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("hello".tr),
            Text('message'.trParams({
              'name': 'Gokhan',
              'date': DateTime.now().toString()
            })),
            FlatButton(onPressed: () => { controller.increment() }, child: Text("+ Counter"),),
            FlatButton(onPressed: () => { controller.normalVal++ }, child: Text("+ Normal Val"),),
            FlatButton(onPressed: () => { Get.toNamed(AppRoutes.nextDetail) }, child: Text('Next Page'),),
            FlatButton(onPressed: () => { controller.welcome() }, child: Text('Show Welcome Dialog'),),
            FlatButton(onPressed: () => { controller.updateSampleWithGetBuilder() }, child: Text('Update Sample With GetBuilder'),),
            FlatButton(onPressed: () => {
              controller.normalVal++,
              controller.update(['mixinBuilderSampleId'])
            }, child: Text('Mixin Builder Test'),),
            Obx(() => Text(
                'Obx: ${MyApp.counter} - normalVal: ${controller.normalVal}'
            ),),
            GetX<HomeViewModel>(
                builder: (c) =>
                    Text( 'GetX worked: ${c.getCounter()} - normalVal:  ${c.normalVal}')
            ),
            GetBuilder<HomeViewModel>(
              id: 'getBuilderSampleId',
              builder: (c) => Text(
                'GetBuilder worked: ${c.getCounter()} - normalVal: ${c.normalVal}', // this will update
              ),
            ),
            MixinBuilder<HomeViewModel>(
              id: 'mixinBuilderSampleId',
              builder: (c) => Text(
                'MixinBuilder worked: ${c.getCounter()} - normalVal: ${c.normalVal}',
              ),
            ),

          ],
        ),
      ),
    );
  }

}