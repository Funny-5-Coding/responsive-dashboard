import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../config/size_config.dart';
import '../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: SvgPicture.asset('assets/mac-action.svg'),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/home.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/pie-chart.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/clipboard.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/credit-card.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/trophy.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
              SideMenuIcon(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/invoice.svg',
                  theme: SvgTheme(currentColor: AppColors.iconGray),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SideMenuIcon({
    required Function() onPressed,
    Widget icon = const Icon(Icons.abc),
  }) =>
      IconButton(
        onPressed: onPressed,
        icon: icon,
        iconSize: 20,
        padding: EdgeInsets.symmetric(vertical: 20),
      );
}
