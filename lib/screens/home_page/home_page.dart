import 'package:ecommerce_app/app_colors/app_colors.dart';
import 'package:ecommerce_app/styles/home_screen_styles.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  AppBar buildAppBar() {
    return AppBar(
      bottom: TabBar(
        tabAlignment: TabAlignment.center,
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseGreenMilitaryColor,
        tabs: [
          Tab(
            text: "All",
          ),
          Tab(
            text: "Clothing",
          ),
          Tab(
            text: "Shoes",
          ),
          Tab(
            text: "Accessories",
          ),
        ],
      ),
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
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_alt_outlined,
            color: AppColors.baseBlackColor,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: AppColors.baseBlackColor,
            size: 30,
          ),
        ),
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            Center(child: Text("1Page")),
            Center(child: Text("2Page")),
            Center(child: Text("3Page")),
            Center(child: Text("4Page")),
          ],
        ),
      ),
    );
  }
}
