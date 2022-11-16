import 'package:flutter/material.dart';
import 'package:gdxg2/constants.dart';

import '../util/myBox.dart';
import '../util/myTile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  _TabletScaffoldState createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppbar,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),

          // tiles below is

          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  })),
        ],
      ),
    );
  }
}
