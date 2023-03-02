import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';

class CastCard extends StatelessWidget {
  const CastCard({
    super.key,
    required this.cast,
  });

  final Map cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding / 2),
      width: 80,
      child: Column(
        children: [
          Image.asset(
            cast['image'],
            width: 64,
            height: 64,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            style: const TextStyle(color: kTextColor),
            textAlign: TextAlign.center,
          ),
          Text(
            cast['movieName'],
            style: const TextStyle(color: kTextLightColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
