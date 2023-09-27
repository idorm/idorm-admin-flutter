import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';
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
      title: 'Spotright',
      routes: {
        '/home': (context) => const Home(),
        '/splash': (context) => const Splash(),
      },
      theme: ThemeData(
          primarySwatch: IDormColors.materialPrimary,
          canvasColor: IDormColors.white,
          fontFamily: 'Pretendard'
      ),
      initialRoute: '/splash',
      initialBinding: BindingsBuilder(() {

        Get.put(Logger());


      }),
      locale: Get.deviceLocale,
    );
  }

  @override
  void initState() {

    super.initState();
  }


}
