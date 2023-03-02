import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';

class TagCard extends StatelessWidget {
  const TagCard({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4, horizontal: kDefaultPadding),
      decoration: BoxDecoration(border: Border.all(color: Colors.black26), borderRadius: BorderRadius.circular(20)),
      child: Text(
        tag,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
