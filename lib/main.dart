import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Home_Screen_One.dart';

import 'HomeScreen.dart';
import 'Language.dart';

void main() {
  runApp( MyApp(darkMode: false,));
}

class MyApp extends StatelessWidget {
  bool darkMode;
   MyApp({Key? key, required this.darkMode}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //bool darkMode;
   // TradeWixApp({Key? key, required this.darkMode}) : super(key: key);
    return
      //GetMaterialController(
      GetMaterialApp(


        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          textTheme: TextTheme(
            titleMedium: TextStyle(color: Colors.white70),
            bodyMedium: TextStyle(color: Colors.white70),
          ),
          shadowColor: Colors.grey.shade900,
          brightness: Brightness.dark,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Color.fromARGB(255, 37, 36, 36),
          appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            color: Color.fromARGB(200, 174, 242, 135),
            elevation: 0,
            foregroundColor: Colors.black,
          ),
          primaryColor: Color.fromARGB(200, 174, 242, 135),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              elevation: 0,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(primary: Colors.grey),
          ),
        ),
        themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData(
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              color: Color.fromARGB(255, 174, 242, 135),
              elevation: 0,
              foregroundColor: Colors.black,
            ),
            primaryColor: Color.fromARGB(255, 174, 242, 135),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(primary: Colors.grey),
            )),

      title: 'Gitx',
      locale: Locale('en', 'US'),
      translations: Language(),
      fallbackLocale: Locale ('en','US'),

      home: HomeScreen(),
        getPages: [
          GetPage(name: '/OneHome', page:()=> HomeScreen()),
          GetPage(name: "/TWoHome", page: ()=> HomeScreenOne()),

        ],
    );
  }
}

