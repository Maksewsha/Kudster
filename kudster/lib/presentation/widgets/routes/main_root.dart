import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kudster/presentation/res/strings.dart';
import 'package:kudster/presentation/widgets/elements/MyAppBar.dart';
import 'package:kudster/presentation/widgets/elements/nav_drawer.dart';

class MainRoot extends StatelessWidget{

  const MainRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: NavDrawer(),
      );
  }

}