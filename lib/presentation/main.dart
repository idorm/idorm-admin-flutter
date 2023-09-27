import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
import 'package:idorm_admin_flutter/presentation/page/Detail/detaiController.dart';
import 'package:idorm_admin_flutter/presentation/page/home/home.dart';
import 'package:idorm_admin_flutter/presentation/page/home/home_controller.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const IDormAdmin());
}

class IDormAdmin extends StatefulWidget {
  const IDormAdmin({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<IDormAdmin> {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IDorm',
      routes: {
        '/home': (context) => const Home(),
      },
      theme: ThemeData(
          primarySwatch: IDormColors.materialPrimary,
          canvasColor: IDormColors.white,
          fontFamily: 'Pretendard'
      ),
      initialRoute: '/home',
      initialBinding: BindingsBuilder(() {

        Get.put(Logger());

        Get.put(HomeController());
        Get.put(DetailController());


      }),
      locale: Get.deviceLocale,
    );
  }

  @override
  void initState() {

    super.initState();
  }


}
