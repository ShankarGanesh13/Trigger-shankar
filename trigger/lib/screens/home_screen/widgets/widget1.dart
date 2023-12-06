import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/screens/home_screen/widgets/triangle_widget.dart';
import 'package:trigger/utils/app_fonts.dart';

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? success = context.watch<HomeScreenProvider>().success;
    int score = context.watch<HomeScreenProvider>().successCount;
    return SizedBox(
      width: 250,
      height: 200,
      child: CustomPaint(
        painter: TriangleWidget(success: success),
        child: Center(
          child: success != null
              ? success == true
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text("SUCCESS ", style: AppFonts.w500white16),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Current Score: $score",
                          style: AppFonts.w500white16,
                        )
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "TRY AGAIN!",
                        style: AppFonts.w500white16,
                      ),
                    )
              : const SizedBox(),
        ),
      ),
    );
  }
}
