import 'package:flutter/material.dart';

import 'package:shop_app/screens/shops/body.dart';

class FilterPage extends StatelessWidget {
  static String routeName = "/shops";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery Shops"),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: Body(),
    );
  }
}
