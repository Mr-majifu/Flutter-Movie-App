
import 'package:flutter/material.dart';
import 'package:movie_app/constains.dart';

class CastCard extends StatelessWidget {
  const CastCard({ Key? key, required this.cast }) : super(key: key);

  final Map cast;

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2,),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            style: TextStyle(
              color: kTextLightColor,
            ),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}