
import 'package:flutter/material.dart';
import 'package:movie_app/constains.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.genres,
  }) : super(key: key);

  final String genres;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4, // 5 padding top and bottom
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genres,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16
        ),
      )
    );
  }
}