import 'package:flutter/material.dart';
import 'package:shop_app/screens/material/components/body.dart';

class MaterialScreen extends StatelessWidget {
  static String routeName = "/material";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}