import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/style/colors.dart';

class AppBarItems extends StatelessWidget {
  const AppBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppBarIcon(
          icon: SvgPicture.asset(
            'assets/calendar.svg',
            width: 20,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 10),
        AppBarIcon(
          icon: SvgPicture.asset(
            'assets/ring.svg',
            width: 20,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 15),
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              child: Icon(
                Icons.person,
                color: AppColors.white,
              ),
              backgroundColor: AppColors.black,
            ),
            AppBarIcon(
              icon: Icon(
                Icons.arrow_drop_down,
                color: AppColors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

Widget AppBarIcon({icon = Icons.abc, required Function() onPressed}) =>
    IconButton(
      isSelected: false,
      onPressed: onPressed,
      icon: icon,
    );
