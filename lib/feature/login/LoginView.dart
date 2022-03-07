import 'package:design_system_poc/design_system_poc.dart';
import 'package:flutter/material.dart';
import 'package:design_system_poc/src/widgets/main_button.dart';
import 'package:design_system_poc/src/widgets/main_textInput.dart';

class LoginView extends StatefulWidget {
  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  @override
  void initState() {
    super.initState();
  }

  void _testClick() {
    print("BOTÃO FOI CLICADO!");
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Column(
              children: [
                Text("LOREM IPSUM DOLOR SIT AMET"),
                MainTextInput(
                    controller: TextEditingController(), labelText: "LOGIN"),
                MainTextInput(
                    controller: TextEditingController(), labelText: "SENHA")
              ],
            )),
            MainButton(
                height: 50,
                width: MediaQuery.of(context).size.width - 32,
                labelText: "ENTRAR",
                backgroundColor: Colors.blueAccent,
                borderColor: secondaryDarkColor,
                action: () => _testClick()),
          ],
        )),
      );
}
