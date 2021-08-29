import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/furniture.dart';
import 'package:flutter_application_1/widgets/sub_homePage.dart';
import 'package:provider/provider.dart';
import './screens/home_page.dart';
import './models/funituremodel.dart';
import "./provider/furniture.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: FurnitureData(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: MaterialColor(Color(0xffffffff).value, {
              50: Color(0xffD6DBDF),
              100: Color(0xffD6DBDF),
              200: Color(0xffAEB6BF),
              300: Color(0xff85929E),
              400: Color(0xff5D6D7E),
              500: Color(0xff34495E),
              600: Color(0xff2E4053),
              700: Color(0xff283747),
              800: Color(0xff212f3c),
              900: Color(0xff1b2631),
            }),
          ),
          home: MyHome(),
          routes: {
            // SubPage.routename: (ctx) => SubPage(Widget.id),
          }),
    );
  }
}
