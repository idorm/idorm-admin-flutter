import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
import 'package:idorm_admin_flutter/presentation/page/home/home_controller.dart';
import '../../component/idormCheckBox.dart';
import '../../component/toggleBtn.dart';
import '../Detail/detail.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.find();

  bool isPublicChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22, bottom: 14, right: 24, left: 24),
          child: Column(children: [
            _isPublic(),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return _noticeList();
                  }),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _isPublic() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 5),

      child: Row(
        children: [
          IDormCheckBox(size: 20, value: isPublicChecked, onChanged: (checked) {
            setState(() {
              isPublicChecked = checked;
            });
          }),
          const SizedBox(width: 10, height: 30,),
          GestureDetector(
            onTap: () => {
              //요기도 클릭하면 토글하게 해주기
            },
            child: const Text(
              "공개하지 않은 공지만 확인하기",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: IDormColors.gray4),
            ),
          )
        ],
      ),
    );
  }


  Widget _noticeList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () => Get.to(Detail()),
        child: Container(
          padding:
              const EdgeInsets.only(top: 24, bottom: 22, right: 22, left: 22),
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: IDormColors.gray2, width: 1),
              color: IDormColors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "공지 사항 제목",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: IDormColors.black),
              ),
              const Padding(padding: EdgeInsets.only(top: 5)),
              const Text(
                "6월 18일",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: IDormColors.black),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text(
                "일정이 있는 기숙사",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: IDormColors.gray3),
              ),
              _dorm(true, true, true)
            ],
          ),
        ),
      ),
    );
  }

  Widget _dorm(bool dorm1, bool dorm2, bool dorm3) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 3, right: 7),
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
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: IDormColors.gray4),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 3, right: 7),
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
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: IDormColors.gray4),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 3, bottom: 3, right: 7),
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
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: IDormColors.gray4),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
