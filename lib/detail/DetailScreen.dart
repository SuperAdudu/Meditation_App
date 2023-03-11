import 'package:flutter/material.dart';
import 'package:meditation_app/detail/component/Body.dart';
import 'package:meditation_app/screen/components/BotNavBar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
