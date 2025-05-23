import 'package:flutter/material.dart';
import 'package:responsive_ui_chizish/widgets/new_screen.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("Delivery Address"),
                    ],
                  ),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Container(
                      width: 241,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                              0.5,
                            ), // Shadow color
                            blurRadius: 10, // Spread of the shadow
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text("Address:"),
                                  Spacer(),
                                  Icon(Icons.edit_calendar_sharp),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "216 St Paul'sRd, London N1 2LL, UK\n"
                            "Contact : +44-784232",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 78,
                      height: 79,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(
                              0.5,
                            ), // Shadow color
                            blurRadius: 10, // Spread of the shadow
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen(),));
                      }, icon: Icon(Icons.add_circle_outline_outlined))
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "shopping List",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
               containers("assets/images/girl.png", "\$ 64.00", "Women's Casual Wear", "\$ 34.00"),
               containers("assets/images/man.png", "\$ 67.00", "Man's Jacket", "\$ 45.00"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container containers(String picture,String discount,String name,String price){
  return Container(
    width: 331,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5), // Shadow color
          blurRadius: 10, // Spread of the shadow
          offset: Offset(5, 5),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            spacing: 5,
            children: [
              Image.asset(picture),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [Text(name)]),
                  Row(
                    spacing: 5,
                    children: [
                      Text("Variations:"),
                      Container(
                        alignment: Alignment.center,
                        width: 39,
                        height: 17,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          "Black",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 39,
                        height: 17,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          "Black",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("4.8"),
                      SizedBox(width: 5),
                      Image.asset("assets/images/start.png"),
                      Image.asset("assets/images/start.png"),
                      Image.asset("assets/images/start.png"),
                      Image.asset("assets/images/start.png"),
                      Image.asset("assets/images/start2.png"),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 84,
                        height: 29,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Text(
                          price,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "upto 33% off",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            discount,
                            style: TextStyle(
                              decoration:
                              TextDecoration.lineThrough,
                              decorationColor: Colors.black
                                  .withOpacity(0.2),
                              // Optional: Change line color
                              decorationThickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 10),
          Row(
            children: [
              Text("total Order (1)  :"),
              Spacer(),
              Text(
                "\$ 45.00",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
