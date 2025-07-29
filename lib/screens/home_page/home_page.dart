import 'package:ecommerce_app/styles/home_screen_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Welcome",
            style: HomeScreenStyles.appBarUpperTitleStyle,
          ),
          Text(
            "Shopping",
            style: HomeScreenStyles.appBarBottomTitleStyle,
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: SvgPicture.asset(assetName))
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [],
      ),
    );
  }
}
