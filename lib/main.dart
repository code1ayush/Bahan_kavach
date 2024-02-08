import 'package:flutter/material.dart';
import 'package:my_app/pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bahan_Kavach',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Color.fromARGB(255, 41, 105, 52),
          ),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0))),
      routes: {
        "/": (context) => HomePage(),
      },
    );
  }
}
