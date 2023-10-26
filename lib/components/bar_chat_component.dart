import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/style/colors.dart';

class BarChatComponent extends StatelessWidget {
  const BarChatComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            axisNameSize: 20,
            sideTitles: SideTitles(reservedSize: 30),
          ),
        ),
        gridData: FlGridData(
          drawHorizontalLine: true,
          horizontalInterval: 30,
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 30,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 50,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 80,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 40,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY: 70,
                color: AppColors.black,
                borderRadius: BorderRadius.circular(0),
                width: 40,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 90,
                  show: true,
                  color: AppColors.barBg,
                ),
              ),
            ],
          ),
        ],
      ),
      swapAnimationCurve: Curves.linear,
      swapAnimationDuration: Duration(microseconds: 150),
    );
  }
}
