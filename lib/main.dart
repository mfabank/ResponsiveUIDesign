import 'package:flutter/material.dart';
import 'package:gdxg2/responsive/desktop_scaffold.dart';
import 'package:gdxg2/responsive/mobile_scaffold.dart';
import 'package:gdxg2/responsive/responsive_layout.dart';
import 'package:gdxg2/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold());
  }
}
