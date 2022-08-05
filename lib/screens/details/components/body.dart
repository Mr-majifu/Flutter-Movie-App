import 'package:flutter/material.dart';
import 'package:movie_app/components/genre_card.dart';
import 'package:movie_app/constains.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/details/components/backdrop_rating.dart';
import 'package:movie_app/screens/details/components/cast_and_crew.dart';
import 'package:movie_app/screens/details/components/cast_card.dart';
import 'package:movie_app/screens/details/components/genres.dart';
import 'package:movie_app/screens/details/components/title_duration_and_fab_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xff737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast,),
        ],
      ),
    );
  }
}




