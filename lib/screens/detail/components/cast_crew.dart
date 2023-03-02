import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Cast & Crew',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.cast.length,
            itemBuilder: (context, index) => CastCard(cast: movie.cast[index]),
          ),
        )
      ]),
    );
  }
}
