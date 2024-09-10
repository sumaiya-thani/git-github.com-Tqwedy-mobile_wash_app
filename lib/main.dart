import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/Routes/routs.dart';
import '../Utils/Styles/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      ///translations: MyLocale(),
      //locale: language == true ?  const Locale("en") : const Locale("ar"),
      fallbackLocale: const Locale("en"),
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor:Styles.bgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Styles.orangeColor
        )
      ),
      getPages: route,
      initialRoute: "/home",
    );
  }
}


