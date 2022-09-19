import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gtc_customer/core/constants/images_app.dart';

//This is just template
class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        children: [
          //This is just template
          SvgPicture.asset(ImagesApp.logoPath),
          SvgPicture.asset(ImagesApp.whiteLogoPath),
        ],
      ),
    );
  }
}
