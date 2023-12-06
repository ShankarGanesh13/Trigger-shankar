import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/utils/app_fonts.dart';
import 'package:trigger/utils/colors.dart';

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkResponse(
          onTap: () {
            Provider.of<HomeScreenProvider>(context, listen: false)
                .generateRandomNumber();
          },
          highlightShape: BoxShape.circle,
          splashColor: AppColors.widget2,
          highlightColor: AppColors.widget2.withOpacity(0.8),
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.widget2,
                width: 3.0,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "TAP ME TO PLAY",
                  style: AppFonts.w700white20,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
