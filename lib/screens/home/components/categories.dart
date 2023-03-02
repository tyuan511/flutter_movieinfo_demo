import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({Key? key}) : super(key: key);

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int seletedCategory = 0;
  List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, context)),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            seletedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: index == seletedCategory ? kTextColor : kTextLightColor),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == seletedCategory ? kSecondaryColor : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}
