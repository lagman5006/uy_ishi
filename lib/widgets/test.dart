import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui_chizish/widgets/my_app_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Color(0xFF7B61FF),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 330,
              child: Image.asset(
                "assets/images/person.webp",
                width: 350.w,
                height: 350.h,
              ),
            ),
            MyAppContainer(),
          ],
        ),
      ),
    );
  }
}
