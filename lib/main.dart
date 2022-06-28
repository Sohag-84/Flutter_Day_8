import 'package:day_8/model/languages.dart';
import 'package:day_8/widget/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: Languages(),
          locale: Locale('bn','BD'),
          fallbackLocale: Locale('en','US'),
          theme: ThemeData(
            //brightness: Brightness.dark,
              textTheme: const TextTheme(
                  headline6: TextStyle(
                      fontSize: 30
                  )
              ),
              //scaffoldBackgroundColor: Colors.white70,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                // backgroundColor: Colors.orangeAccent,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                  )
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.red
                  )
              )
          ),
          home: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter Demo"),
              centerTitle: true,
            ),
            body: NavigationBarScreen(),
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {  },
            //   child: const Icon(Icons.add),
            // ),
          ),
        );
      },
    );
  }
}

