import 'package:ecommerce_app/app_colors/app_colors.dart';
import 'package:ecommerce_app/stylies/login_screen_stylies.dart';
import 'package:ecommerce_app/widgets/my_button_widget.dart';
import 'package:ecommerce_app/widgets/my_textfromfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget buildTopPart() {
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
                  onPress: () {}
              )
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: MyButtonWidget(
                      text: "Sign up",
                      color: AppColors.baseDarkPinkColor,
                      onPress: (){}
                  )
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Fogot password?", style: LoginScreenStylies.forgotPasswordStylies,)
      ],
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
                    buildTopPart(),
                  ],
                )
              ],
            ),)),
    );
  }

}
