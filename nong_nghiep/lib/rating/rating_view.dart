import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';

class RatingView extends StatelessWidget {
  final double rating;
  const RatingView(this.rating, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating,
      itemCount: 5,
      allowHalfRating: true,
      itemSize: 12,
      ignoreGestures: true,
      ratingWidget: RatingWidget(
        empty: const Icon(
          Icons.star,
          color: Colors.grey,
        ),
        half: const Icon(
          Icons.star_half,
          color: amberColor,
        ),
        full: const Icon(
          Icons.star,
          color: amberColor,
        )
      ), 
      onRatingUpdate: (_) {},
    );
  }
}