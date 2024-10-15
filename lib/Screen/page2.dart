import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:in_app_webview/Screen/homeScreen.dart';

import '../controller/controller.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchingController());
    Timer(
      Duration(
        seconds: 1,
      ),() {
        Get.to(Homescreen());
      },
    );
    return  Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}
