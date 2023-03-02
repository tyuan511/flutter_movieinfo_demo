import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

import 'backgrop_rating.dart';
import 'cast_crew.dart';
import 'movie_tags.dart';
import 'plot_summary.dart';
import 'title_with_action.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleWithAction(movie: movie),
          MovieTags(movie: movie),
          PlotSummary(movie: movie),
          CastAndCrew(movie: movie)
        ],
      ),
    );
  }
}
