import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarrTheme {
  AppBarrTheme._();

  static final AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 4,
    shadowColor: Colors.black54,
    centerTitle: true,
    // titleTextStyle: TextStyle(
    //   fontSize: 20,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.white,
    // ),
    iconTheme: IconThemeData(color: Colors.white),
    actionsIconTheme: IconThemeData(color: Colors.white),
    systemOverlayStyle: SystemUiOverlayStyle.light, // status bar icons color
    toolbarHeight: kToolbarHeight,
    titleSpacing: 20,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
    // ),
  );
}
