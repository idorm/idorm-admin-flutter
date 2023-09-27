/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
import 'package:idorm_admin_flutter/presentation/page/home/home_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.find();
  WebViewController? _webViewController;

  @override
  void initState() {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse('https://youtube.com'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
          children :[
            Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("이거 되면 성공",
                    style: TextStyle(color: IDormColors.primary))),
            SizedBox(
              height: 500,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse('https://bioeng.inu.ac.kr/dorm/6528/subview.do?enc=Zm5jdDF8QEB8JTJGYmJzJTJGZG9ybSUyRjE1MjElMkYzNzI3NTElMkZhcnRjbFZpZXcuZG8lM0ZwYWdlJTNEMSUyNnNyY2hDb2x1bW4lM0RzaiUyNnNyY2hXcmQlM0QlMjZiYnNDbFNlcSUzRCUyNmJic09wZW5XcmRTZXElM0QlMjZyZ3NCZ25kZVN0ciUzRCUyNnJnc0VuZGRlU3RyJTNEJTI2aXNWaWV3TWluZSUzRGZhbHNlJTI2cGFzc3dvcmQlM0QlMjY%3D'),
                ),
                initialOptions: InAppWebViewGroupOptions(
                    android: AndroidInAppWebViewOptions(useHybridComposition: true)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("이거 되면 성공",
                    style: TextStyle(color: IDormColors.primary))),
          ]
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "테스트 페이지",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }

}
*/
