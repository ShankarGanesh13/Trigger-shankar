import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/screens/home_screen/widgets/widget1.dart';
import 'package:trigger/screens/home_screen/widgets/widget2.dart';
import 'package:trigger/screens/home_screen/widgets/widget3.dart';
import 'package:trigger/screens/home_screen/widgets/widget4.dart';
import 'package:trigger/services/shared_preference_service.dart';
import 'package:trigger/utils/app_fonts.dart';
import 'package:trigger/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Provider.of<HomeScreenProvider>(context, listen: false).loadSuccessCount();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
          backgroundColor: AppColors.background,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Text("TRIGGER", style: AppFonts.w700white30),
          )),
      body: const Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 80, bottom: 50),
          child: Widget1(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Widget2(), Widget3()],
        ),
        SizedBox(
          height: 80,
        ),
        Widget4()
      ]),
    );
  }
}
