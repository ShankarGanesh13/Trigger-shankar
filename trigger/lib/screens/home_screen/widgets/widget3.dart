import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/utils/app_fonts.dart';
import 'package:trigger/utils/colors.dart';

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    int randomNumber = context.watch<HomeScreenProvider>().randomNumber;
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.widget3, width: 3),
      ),
      child: Center(
        child: Text(
          randomNumber.toString(),
          style: AppFonts.w600white30,
        ),
      ),
    );
  }
}
