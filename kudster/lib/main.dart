import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kudster/presentation/res/theme.dart';
import 'package:kudster/presentation/widgets/routes/main_root.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const KudsterApp());
}

class KudsterApp extends StatelessWidget {

  const KudsterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainRoot(),
      theme: MyCustomTheme.lightTheme,
    );
  }

}
