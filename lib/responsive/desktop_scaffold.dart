import 'package:flutter/material.dart';

import '../constants.dart';
import '../util/myBox.dart';
import '../util/myTile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  _DesktopScaffoldState createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppbar,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          Expanded(
            child: Column(
              children: [
                //4 box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
        ],
      ),
    );
  }
}
