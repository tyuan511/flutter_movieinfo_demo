import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    super.key,
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(movie.backdrop), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50))),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              padding: const EdgeInsets.only(top: 24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5), blurRadius: 50, color: const Color(0xFF12153D).withOpacity(0.2))
                  ],
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star_fill.svg',
                        height: 28,
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      RichText(
                          text: TextSpan(style: const TextStyle(color: Colors.black), children: [
                        TextSpan(
                            text: '${movie.rating}',
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: kTextColor)),
                        const TextSpan(
                            text: '/10\n',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kTextLightColor))
                      ]))
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 28,
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      const Text('Rate This',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kTextColor))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            '${movie.metascoreRating}',
                            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      const Text('Metascore',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: kTextColor))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SafeArea(child: BackButton())
        ],
      ),
    );
  }
}
