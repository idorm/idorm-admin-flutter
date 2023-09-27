import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
import 'package:idorm_admin_flutter/presentation/page/Detail/detaiController.dart';
import 'package:webview_flutter/webview_flutter.dart';



class Detail extends StatefulWidget {

  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  DetailController detailController = Get.put(DetailController());
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
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 60, bottom: 30),
        child: Column(
            children :[
              _webView(),
              _padding(30),
              _isPublic(true),
              _padding(30),

            ]
        ),
      ),
    );
  }

  Widget _padding(double height){
    return SizedBox(height: height,);
  }


}
