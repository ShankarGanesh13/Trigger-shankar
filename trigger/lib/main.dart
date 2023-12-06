import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trigger/screens/home_screen/home_screen.dart';
import 'package:trigger/screens/home_screen/home_screen_provider.dart';
import 'package:trigger/services/shared_preference_service.dart';
import 'package:trigger/utils/colors.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.p1),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
