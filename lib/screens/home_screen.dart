import 'package:flutter/material.dart';
import 'package:responsive_ui_chizish/widgets/tech_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            width > 600
                ? buildWebAppBar(height, width)
                : buildMobileAppBar(height, width),
            SizedBox(height: height * 0.02),
            width < 600 ? buildMobileTechCards() : buildWebTechCards(),
          ],
        ),
      ),
    );
  }

  Expanded buildWebTechCards() {
    return Expanded(
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return TechCard();
        },
      ),
    );
  }

  Expanded buildMobileTechCards() {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return TechCard();
        },
      ),
    );
  }

  Container buildMobileAppBar(double height, double width) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: height * 0.01,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/app_bar_image.jpg"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "IT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "/\\",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "/\\/",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.1,
                    right: width * 0.02,
                  ),
                  child: Text(
                    "#хакатоны",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.03,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Учавствуй Совершенствуйся Выигрывай бабло",
            style: TextStyle(fontSize: height * 0.05, color: Colors.white),
          ),
          Text(
            "последнее не точно",
            style: TextStyle(fontSize: height * 0.015, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Container buildWebAppBar(double height, double width) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: height * 0.02),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/app_bar_image.jpg"),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "IT",
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "/\\",
              style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "/\\/",
            style: TextStyle(
              color: Colors.white,
              fontSize: height * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.1, right: width * 0.02),
              child: Text(
                "#хакатоны",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: height * 0.03,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
