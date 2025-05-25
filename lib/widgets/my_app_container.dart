import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 60,
      child: Container(
        width: 300.w,
        height: 250.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "  Discover your next skill\n"
                  "Learn anything you want!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF493AA0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover the things you want to \n"
                  "    learn and grow with them",
                  style: TextStyle(color: Colors.black.withOpacity(0.3)),
                ),
              ],
            ),
            SizedBox(height: 17.h),
            Container(
              alignment: Alignment.center,
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF493AA0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
