import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: initialPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          physics: const ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = ((index - initialPage) * 0.038).clamp(-1, 1);

          return AnimatedOpacity(
            duration: const Duration(microseconds: 300),
            opacity: index == initialPage ? 1 : 0.4,
            child: Transform.rotate(
              angle: pi * value,
              child: MoveCard(movie: movies[index]),
            ),
          );
        },
      );
}
