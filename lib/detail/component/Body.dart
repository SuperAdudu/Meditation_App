import 'package:flutter/material.dart';
import 'package:meditation_app/detail/component/BackDrop.dart';
import 'package:meditation_app/detail/component/ListSession.dart';
import 'package:meditation_app/detail/component/SessionLock.dart';
import 'package:meditation_app/screen/components/Search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackDrop(size: size),
        const SafeArea(child: BackButton()),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.05),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                const Text(
                  "3-10 Min Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: size.width * 0.6,
                  child: const Text(
                    "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                  ),
                ),
                SizedBox(
                  width: size.width * 0.53,
                  child: Search(),
                ),
                ListSession(),
                const SizedBox(height: 10),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                SessionLock(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
