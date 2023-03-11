import 'package:flutter/material.dart';
import 'package:meditation_app/detail/component/SessionCard.dart';

class ListSession extends StatelessWidget {
  const ListSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 10,
      children: [
        SeasonCard(sessionNum: 1, isDone: true),
        SeasonCard(sessionNum: 2, isDone: true),
        SeasonCard(sessionNum: 3, isDone: true),
        SeasonCard(sessionNum: 4),
        SeasonCard(sessionNum: 5),
        SeasonCard(sessionNum: 6),
      ],
    );
  }
}
