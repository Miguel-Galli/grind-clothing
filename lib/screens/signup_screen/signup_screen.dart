import 'package:ecommerce_app/styles/signup_screen_style.dart';
import 'package:ecommerce_app/svg_images/svg_images.dart';
import 'package:ecommerce_app/widgets/my_button_widget.dart';
import 'package:ecommerce_app/widgets/my_textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_colors/app_colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo_preto.png",
          height: 150,
        ),
        MyTextfromfieldWidget(
            hintText: "Full name",
            obscureText: false
        ),
        MyTextfromfieldWidget(
            hintText: "Email",
            obscureText: false
        ),
        MyTextfromfieldWidget(
            hintText: "Password",
            obscureText: false
        ),
        MyTextfromfieldWidget(
            hintText: "Confirm Password",
            obscureText: false
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonWidget(
            onPress: () {},
            text: "Create an account",
            color: AppColors.baseGreenMilitaryColor,
          )
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text: "By signing up you agress to our\n\t",
            style: SignupScreenStyle.signInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms\t",
                style: SignupScreenStyle.termsTextStyle,
              ),
              TextSpan(
                text: "and\t",
                style: SignupScreenStyle.andTextStyle,
              ),
              TextSpan(
                text: "Conditions of Use",
                style: SignupScreenStyle.conditionsOfUseTextStyle,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildSocialButton({required Widget child, required VoidCallback onPressed}){
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign up with social networks",
            style: SignupScreenStyle.signInSocialStyles,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildSocialButton(
                    child: SvgPicture.asset(SvgImages.facebook),
                    onPressed: () {}
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              buildTopPart(),
              buildBottomPart(),
            ],
          ),
      ),
    );
  }


}
