import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
import 'package:idorm_admin_flutter/presentation/component/idormBtn.dart';
import 'package:idorm_admin_flutter/presentation/page/Detail/detaiController.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../component/idorm_text_field/idorm_text_field.dart';
import '../../component/toggleBtn.dart';
import '../home/home.dart';



class Detail extends StatefulWidget {

  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  DetailController detailController = Get.put(DetailController());
  WebViewController? _webViewController;

  bool _isPublicChecked = false;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 60, bottom: 30),
          child: Column(
              children :[
                _webView(),
                _padding(30),
                _isPublic(true),
                _padding(30),
                _title(),
                _padding(30),
                _period(),
                _padding(30),
                _dorms(),
                _padding(50),
                _button(),
              ]
          ),
        ),
      ),
    );
  }

  Widget _padding(double height){
    return SizedBox(height: height,);
  }

  Widget _webView(){
    return SizedBox(
      height: 300,
      child: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://bioeng.inu.ac.kr/dorm/6528/subview.do?enc=Zm5jdDF8QEB8JTJGYmJzJTJGZG9ybSUyRjE1MjElMkYzNzI3NTElMkZhcnRjbFZpZXcuZG8lM0ZwYWdlJTNEMSUyNnNyY2hDb2x1bW4lM0RzaiUyNnNyY2hXcmQlM0QlMjZiYnNDbFNlcSUzRCUyNmJic09wZW5XcmRTZXElM0QlMjZyZ3NCZ25kZVN0ciUzRCUyNnJnc0VuZGRlU3RyJTNEJTI2aXNWaWV3TWluZSUzRGZhbHNlJTI2cGFzc3dvcmQlM0QlMjY%3D'),
        ),
        initialOptions: InAppWebViewGroupOptions(
            android: AndroidInAppWebViewOptions(useHybridComposition: true)),
      ),
    );
  }

  Widget _isPublic(bool isPublic){
    return Row(
      children: [
        const Text(
          "공개여부",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: IDormColors.gray4),
        ),
        ToggleBtn(isPublicChecked: _isPublicChecked, action: () => {})
      ],
    );
  }

  Widget _title(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "제목",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: IDormColors.black),
        ),
        _padding(5),
        IDormTextField(borderRadius: 10),
      ],
    );
  }

  Widget _period(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "기간 ",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: IDormColors.black),
        ),
        _padding(5),
        IDormTextField(borderRadius: 10, suffixIcon:  GestureDetector(
          onTap: null,
          child: SvgPicture.asset(
            "assets/calendar.svg",
            color: IDormColors.primary,
            fit: BoxFit.scaleDown,
          ),
        ),),
      ],
    );
  }

  Widget _dorms(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "기숙사",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 16, color: IDormColors.black),
        ),
        _padding(5),
        IDormTextField(borderRadius: 10),
      ],
    );
  }

  Widget _button(){
    return IDormBtn(action: () => Get.to(Home()), mode: Mode.edit);
  }

}
