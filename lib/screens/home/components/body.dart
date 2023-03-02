import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'categories.dart';
import 'movie_carousel.dart';
import 'tags.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Categorylist(),
          Tags(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel()
        ],
      ),
    );
  }
}
