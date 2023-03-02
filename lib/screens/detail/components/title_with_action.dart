import 'package:flutter/material.dart';
import 'package:movieinfo/constants.dart';
import 'package:movieinfo/models/movie.dart';

class TitleWithAction extends StatelessWidget {
  const TitleWithAction({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: kDefaultPadding / 4,
              ),
              Row(
                children: [
                  Text(
                    '${movie.year}',
                    style: const TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    'PG-13',
                    style: TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    '2h32min',
                    style: TextStyle(color: kTextLightColor),
                  )
                ],
              )
            ],
          )),
          SizedBox(
            width: 64,
            height: 64,
            child: FloatingActionButton(
              backgroundColor: kSecondaryColor,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
