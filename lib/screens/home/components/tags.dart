import 'package:flutter/material.dart';
import 'package:movieinfo/components/tag_card.dart';
import 'package:movieinfo/constants.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tags = ['Action', 'Crime', 'Comedy', 'Drama', 'Horror', 'Acimation'];

    return Container(
      height: 36,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) => TagCard(tag: tags[index])),
    );
  }
}
