import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:design_system_poc/design_system_poc.dart';
import 'package:design_system_poc/src/shared/app_colors.dart';
import 'package:design_system_poc/src/widgets/main_slider_container.dart';
import 'package:design_system_poc/src/widgets/main_slider.dart';
import 'package:design_system_poc/src/widgets/main_card.dart';
import 'package:design_system_poc/src/widgets/main_button.dart';

class HomeView extends StatefulWidget {
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  List<MainCard> cards = <MainCard>[
    MainCard(boxTitle: "Card One", background: Colors.red),
    MainCard(boxTitle: "Card Two", background: Colors.green),
    MainCard(boxTitle: "Card Three", background: Colors.black),
    MainCard(boxTitle: "Card Four", background: Colors.blue),
    MainCard(boxTitle: "Card Five", background: Colors.yellow)
  ];

  @override
  void initState() {
    // TODO: Implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("MVVM POC"),
        backgroundColor: Colors.black45,
      ),
      body: MainSliderContainer(
        cards: [
          MainCard(background: Colors.amber, boxTitle: "Box One"),
          MainCard(background: Colors.yellowAccent, boxTitle: "Box Two"),
          MainCard(background: Colors.redAccent, boxTitle: "Box Three")
        ],
        height: 140,
      ));
}
