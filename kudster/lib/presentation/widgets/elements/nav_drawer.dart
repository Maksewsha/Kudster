

import 'package:flutter/material.dart';
import 'package:kudster/presentation/res/strings.dart';

class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: Strings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: Strings.account,
        )
      ],
    );
  }

}