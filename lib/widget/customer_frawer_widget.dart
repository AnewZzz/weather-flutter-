import 'package:flutter/material.dart';

class CustomeDrawerWidget extends StatelessWidget {
  const CustomeDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width - 75,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.lightBlue,
              Colors.blue.shade600,
              Colors.blue.shade900
            ])),
      ),
    );
  }
}