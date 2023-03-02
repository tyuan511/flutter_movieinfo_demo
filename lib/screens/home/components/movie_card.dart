import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';
import 'package:movieinfo/screens/detail/detail_screen.dart';

class MoveCard extends StatelessWidget {
  final Movie movie;

  const MoveCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        child: OpenContainer(
          closedElevation: 0,
          openElevation: 0,
          closedBuilder: (context, action) => buildMovieCard(context),
          openBuilder: (context, action) => DetailScreen(movie: movie),
        ));
  }

  Widget buildMovieCard(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(movie.poster), fit: BoxFit.cover)),
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            movie.title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/star_fill.svg',
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text('${movie.rating}'),
            )
          ],
        )
      ],
    );
  }
}
