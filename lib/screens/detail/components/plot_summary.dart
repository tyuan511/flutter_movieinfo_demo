import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

class PlotSummary extends StatelessWidget {
  const PlotSummary({
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
          "Plot Summary",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: kDefaultPadding / 4,
        ),
        Text(
          movie.plot,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black45),
        )
      ]),
    );
  }
}
