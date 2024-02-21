import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(
                  hintText: 'Email-naser.hossain04@gmail.com'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration:
                  buildInputDecoration(hintText: 'Mobile Number-01749051692'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(
                  hintText: 'What\'sapp Number-01749051692'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactText(),
        Constants.sizedBox(height: 40.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(70),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  textAlign: TextAlign.center, // Aligns text to the center
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(
                      hintText: 'Name-Md Naser Bin Hossain'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 40.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(150),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(
                      hintText: 'Mobile Number-01749051692'),
                ),
              ),
            ),
            Constants.sizedBox(width: 40.0),
            Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: BorderRadius.circular(150),
                    color: Colors.transparent,
                    elevation: 8,
                    child: TextField(
                      textAlign: TextAlign.center, // Aligns text to the center
                      cursorColor: AppColors.white,
                      style: AppTextStyles.normalStyle(),
                      decoration: buildInputDecoration(
                          hintText: 'What\'app Number-01749051692'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me!',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.bgColor2,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}
