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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){
              return _NoticeList();
            }),
      ),
    );
  }

  Widget _NoticeList(){
    return Padding(
      padding: const EdgeInsets.only(top: 22, bottom: 14, right: 24, left: 24),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 22, right: 22, left: 22),
        height: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: IDormColors.gray2, width: 1),
            color: IDormColors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "공지 사항 제목",
              style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: IDormColors.black),
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            const Text(
              "6월 18일",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 14, color: IDormColors.black),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              "일정이 있는 기숙사",
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 12, color: IDormColors.gray3),
            ),
            _Dorm(true, true, true)
          ],
        ),
      ),
    );
  }

  Widget _Dorm(bool dorm1, bool dorm2, bool dorm3){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children : [
        Padding(
        padding: const EdgeInsets.only(top: 3,bottom: 3, right: 7),
        child: Container(
          width: 60,
          height: 26,
          color: IDormColors.gray2,
          child: Visibility(
            visible: dorm1,
            child: const Center(
              child: Text(
                "1기숙사",
                style: TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 12, color: IDormColors.gray4),
              ),
            ),
          ),
        ),
      ),
        Padding(
          padding: const EdgeInsets.only(top: 3,bottom: 3, right: 7),
          child: Container(
            width: 60,
            height: 26,
            color: IDormColors.gray2,
            child: Visibility(
              visible: dorm1,
              child: const Center(
                child: Text(
                  "2기숙사",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12, color: IDormColors.gray4),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3,bottom: 3, right: 7),
          child: Container(
            width: 60,
            height: 26,
            color: IDormColors.gray2,
            child: Visibility(
              visible: dorm1,
              child: const Center(
                child: Text(
                  "3기숙사",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12, color: IDormColors.gray4),
                ),
              ),
            ),
          ),
        ),


      ]
    );
  }



}
