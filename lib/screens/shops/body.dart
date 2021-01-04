import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/shops/shop.dart';
import 'package:shop_app/screens/material/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () => {Navigator.pushNamed(context, MaterialScreen.routeName)},
          ),
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },

            // press: () => {},
          ),
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            // press: () => {},
          ),
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            // press: () => {},
          ),
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            // press: () => {},
          ),
          Shop(
            title: "Yeh Ek Shop Hai",
            image: "assets/images/shop1.png",
            text: "This shop has the features that will give you ..",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            // press: () => {},
          ),
        ],
      ),
    );
  }
}
