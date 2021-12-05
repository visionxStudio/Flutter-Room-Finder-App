import 'package:flutter/material.dart';
import 'package:statusbarz/statusbarz.dart';

class RoomFinderSplash extends StatelessWidget {
  const RoomFinderSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Statusbarz.instance.refresh();
    return const Scaffold(
      body: Center(
        child: Text(
          "Splash Screen",
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
