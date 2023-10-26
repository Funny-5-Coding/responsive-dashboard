import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.amount,
    required this.icon,
    required this.label,
  });

  final String icon;
  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: Responsive.isDesktop(context) ? 200 : 160),
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 20,
        right: Responsive.isDesktop(context) ? 40 : 20,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            width: 35,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 2),
          PrimaryText(
            text: label,
            color: AppColors.secondary,
            size: 16,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 2),
          PrimaryText(
            text: amount,
            fontWeight: FontWeight.w700,
            size: 16,
          ),
        ],
      ),
    );
  }
}
