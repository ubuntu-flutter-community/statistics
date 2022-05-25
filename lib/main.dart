import 'package:flutter/material.dart';
import 'package:ubuntu_statistics/pages/home.dart';

import 'package:yaru/yaru.dart';

void main() {
  runApp(const StatisticsApp());
}

class StatisticsApp extends StatelessWidget {
  const StatisticsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Desktop Statistics',
      theme: yaruDark,
      home: HomePage(),
    );
  }
}
