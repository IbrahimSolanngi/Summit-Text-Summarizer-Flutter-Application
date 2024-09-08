import 'package:flutter/material.dart';

import '../Login_Screen/login_screen.dart';
import '../Register_Screen/register_screen.dart';


class Handler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Handler();
  }
}

class _Handler extends State<Handler> {
  bool showSignin = true;

  void toggleView() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      return Login(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
