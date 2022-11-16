import 'package:flutter/material.dart';
import 'package:gdxg2/constants.dart';
import 'package:gdxg2/util/myBox.dart';
import 'package:gdxg2/util/myTile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  _MobileScaffoldState createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: Colors.grey[300],
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
