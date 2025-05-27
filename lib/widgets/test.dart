import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui_chizish/widgets/my_app_container.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade300,
      body: Center(
        child: SizedBox(
          width: 220.w,
          height: 400.h,
          child: Stack(
            clipBehavior: Clip.none,

            alignment: Alignment.center,
            children: [
              Positioned(
                top: -20,
                child: Text(
                  "Learn Stack Widget",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
              Positioned(
                top: 240,
                child: Container(
                  padding: EdgeInsets.all(12),
                  alignment: Alignment.bottomCenter,
                  width: 200.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade400,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        // Shadow color
                        spreadRadius: 5,
                        // How much the shadow spreads
                        blurRadius: 7,
                        // Blur effect
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  transform: Matrix4.rotationZ(0.2),
                  child: Text(
                    "Bottom Card",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.bottomCenter,
                  width: 200.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade300,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        // Shadow color
                        spreadRadius: 5,
                        // How much the shadow spreads
                        blurRadius: 7,
                        // Blur effect
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  transform: Matrix4.rotationZ(-0.2),
                  child: Text(
                    "Bottom Card",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Positioned(
                bottom: 250,
                child: Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.topCenter,
                  width: 200.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        // Shadow color
                        spreadRadius: 5,
                        // How much the shadow spreads
                        blurRadius: 7,
                        // Blur effect
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Top Card \n Widgets are layered",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Step 1 of 3: Understanding layering order",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Positioned(
                bottom: -80,
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
