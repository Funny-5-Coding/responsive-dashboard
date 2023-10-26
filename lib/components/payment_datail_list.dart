import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/payment_list_tile.dart';
import 'package:responsive_dashboard/config/size_config.dart';
import 'package:responsive_dashboard/data.dart';
import 'package:responsive_dashboard/style/colors.dart';
import 'package:responsive_dashboard/style/style.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.blockSizeVertical * 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: AppColors.iconGray,
                blurRadius: 15,
                offset: Offset(10, 15),
              ),
            ],
          ),
          child: Image.asset('assets/card.png'),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical * 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activities',
              size: 10,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '02 Mar 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 2),
            Column(
              children: List.generate(
                recentActivities.length,
                (index) => PaymentListTile(
                  icon: recentActivities[index]['icon']!,
                  label: recentActivities[index]['label']!,
                  amount: recentActivities[index]['amount']!,
                ),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical * 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: 'Upcoming Payments',
                  size: 10,
                  fontWeight: FontWeight.w800,
                ),
                PrimaryText(
                  text: '02 Mar 2023',
                  size: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondary,
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 2),
                Column(
                  children: List.generate(
                    upcomingPayments.length,
                    (index) => PaymentListTile(
                      icon: upcomingPayments[index]['icon']!,
                      label: upcomingPayments[index]['label']!,
                      amount: upcomingPayments[index]['amount']!,
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
}
