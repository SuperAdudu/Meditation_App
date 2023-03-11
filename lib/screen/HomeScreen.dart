import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constant.dart';
import 'package:meditation_app/screen/components/Body.dart';
import 'package:meditation_app/screen/components/BotNavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
