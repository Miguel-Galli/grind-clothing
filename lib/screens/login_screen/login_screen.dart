import 'package:ecommerce_app/app_colors/app_colors.dart';
import 'package:ecommerce_app/screens/home_page/home_page.dart';
import 'package:ecommerce_app/styles/login_screen_styles.dart';
import 'package:ecommerce_app/widgets/my_button_widget.dart';
import 'package:ecommerce_app/widgets/my_textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../routes/routes.dart';
import '../../svg_images/svg_images.dart';
import '../signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget buildTopPart({required BuildContext context}) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo_preto.png",
          height: 150,
        ),
        Column(
          children: [
            MyTextfromfieldWidget(hintText: 'E-mail', obscureText: false),
            MyTextfromfieldWidget(hintText: 'Password', obscureText: true),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: MyButtonWidget(
                  text: "Sign in",
                  color: AppColors.baseBlackColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: HomePage(),
                    );
                  }
              )
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: MyButtonWidget(
                      text: "Sign up",
                      color: AppColors.baseGreenMilitaryColor,
                      onPress: (){
                        PageRouting.goToNextPage(
                          context: context,
                          navigateTo: SignupScreen(),
                        );
                      }
                  )
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Forgot password?", style: LoginScreenStyles.forgotPasswordStyles,)
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
    return SizedBox(
      height: 450,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: LoginScreenStyles.signInSocialStyles,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //facebook social button
                buildSocialButton(
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    width: 45,
                  ),
                  onPressed: (){},
                ),
                buildSocialButton(
                    child: SvgPicture.asset(SvgImages.google),
                    onPressed: () {}
                ),
                //x social button
                buildSocialButton(
                    child: SvgPicture.asset(SvgImages.x),
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
          child: Center(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildTopPart(context: context),
                    buildBottomPart(),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }

}
