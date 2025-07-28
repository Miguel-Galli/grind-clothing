import 'package:ecommerce_app/widgets/my_textfromfield_widget.dart';
import 'package:flutter/material.dart';

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
      ],
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
            ],
          ),
      ),
    );
  }


}
