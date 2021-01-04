import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Shop extends StatelessWidget {
  final String title;
  final String image;
  final String text;
  final GestureTapCallback press;
  const Shop({
    Key key,
    @required this.image,
    @required this.title,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0, left: 20, right: 20),
      child: InkWell(
        onTap: press,
        child: SizedBox(
          height: 156,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: 136,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     offset: Offset(0, 8),
                  //     blurRadius: 10,
                  //     color: Colors.white,
                  //   ),
                  // ],
                ),
              ),
              Image.asset(image),
              Positioned(
                left: 130,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 136,
                  width: MediaQuery.of(context).size.width - 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset("assets/icons/forward.svg"),
                      ),
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

const kBackgroundColor = Color(0xFFFEFEFE);
const kTitleTextColor = Color(0xFF303030);
const kBodyTextColor = Color(0xFF4B4B4B);
const kTextLightColor = Color(0xFF959595);
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
const kPrimaryColor = Color(0xFF3382CC);
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final kActiveShadowColor = Color(0xFF4056C6).withOpacity(.15);

// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);

const kTitleTextstyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);
