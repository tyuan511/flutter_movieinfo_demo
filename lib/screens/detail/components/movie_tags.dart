import 'package:flutter/material.dart';
import 'package:movieinfo/components/tag_card.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

class MovieTags extends StatelessWidget {
  const MovieTags({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => TagCard(tag: movie.genra[index]),
        ),
      ),
    );
  }
}
