import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
// import 'package:shop_app/models/product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Shoping extends StatelessWidget {
  const Shoping({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: title, press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoShops.length,
                (index) {
                  if (demoShops[index].isPopular)
                    return ShopCard(shop: demoShops[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.shop,
  }) : super(key: key);

  final double width, aspectRetio;
  final Shops shop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  //Hero widget was present here
                  // tag: shop.id.toString(),
                  child: Image.asset(shop.images[0]),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              shop.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    height: getProportionateScreenWidth(28),
                    width: getProportionateScreenWidth(28),
                    decoration: BoxDecoration(
                      color: shop.isFavourite
                          ? kPrimaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: shop.isFavourite
                          ? Color(0xFFFF4848)
                          : Color(0xFFDBDEE4),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Shops {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final bool isFavourite, isPopular;

  Shops({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
  });
}

// Our demo Products

List<Shops> demoShops = [
  Shops(
    id: 1,
    images: [
      "assets/images/flower_shop.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Flower Shop",
    isFavourite: true,
    isPopular: true,
  ),
  Shops(
    id: 2,
    images: [
      "assets/images/pizza_shop.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pizza Shop",
    isPopular: true,
  ),
  Shops(
    id: 3,
    images: [
      "assets/images/book_shop.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Boook Shop",
    isFavourite: false,
    isPopular: true,
  ),
  Shops(
    id: 4,
    images: [
      "assets/images/game_shop.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Game Shop",
    isFavourite: true,
    isPopular: true,
  ),
  Shops(
    id: 5,
    images: [
      "assets/images/food_shop.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Food Shop",
    isFavourite: false,
    isPopular: true,
  ),
];
