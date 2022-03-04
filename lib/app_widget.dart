import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design_system_poc/design_system_poc.dart';

import 'feature/home/HomeView.dart';
import 'feature/login/LoginView.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
    );
  }
}
