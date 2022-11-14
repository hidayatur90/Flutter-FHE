import 'package:flutter/material.dart';

import 'core.dart';

void main() async {
  await initialize();

  Widget mainView = const DashboardView();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
// C:\Users\Hp\AppData\Local\Android\Sdk