import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mehndi_app/main.dart';

class SplashServices {
  void ISLogin(BuildContext context) {
    Timer(
        Duration(seconds: 7),
        () => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Screen1())));
  }
}
