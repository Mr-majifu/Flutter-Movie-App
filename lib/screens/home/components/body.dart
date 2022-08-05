import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/constains.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genres.dart';

import 'package:movie_app/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}


