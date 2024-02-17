import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      //  cho phép bạn mở rộng nội dung widget con của AppBar ra phía sau AppBar
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        Image.asset(
          'assets/images/bg1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        SafeArea(child: child!)
      ]),
    );
  }
}
