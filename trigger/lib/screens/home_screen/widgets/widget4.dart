import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/services/shared_preference_service.dart';
import 'package:trigger/utils/colors.dart';

import '../../../utils/app_fonts.dart';

class Widget4 extends StatelessWidget {
  const Widget4({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<HomeScreenProvider>(context, listen: false)
            .resetScore(context: context);
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.widget4, width: 3),
        ),
        child: Center(
          child: Text(
            'RESET SCORE',
            style: AppFonts.w500white16,
          ),
        ),
      ),
    );
    ;
  }
}
