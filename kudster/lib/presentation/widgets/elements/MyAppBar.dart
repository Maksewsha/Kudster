import 'package:flutter/material.dart';
import 'package:kudster/presentation/res/strings.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(Strings.title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}