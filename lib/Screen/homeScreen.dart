import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:in_app_webview/Screen/page2.dart';
import 'package:in_app_webview/controller/controller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchingController());
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri(controller
                    .search.value)), //https://www.google.com/search?q=swiggy
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffeae5ef),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(color: Colors.black38,blurRadius: 3,spreadRadius: 2,offset: Offset(5, 9)),
                  ]
                ),
                child: TextFormField(
                  controller: txtSearch,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xffeae5ef), width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Color(0xffeae5ef), width: 2)),
                  ),
                  onFieldSubmitted: (value) {
                    controller.search.value =
                    'https://www.google.com/search?q=$value';
                    Get.to(Page2());
                  },
                ),
              ).marginSymmetric(horizontal: 15),
            ],
          )
        ],
      ),
    );
  }
}

TextEditingController txtSearch = TextEditingController();
