import 'package:flutter/material.dart';
import 'package:trip_application/location.dart';

Widget LocationDescription(
  Location location,
) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          location.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Stars(location.rating, 5),
            SizedBox(
              width: 10,
            ),
            Text(
              '(${location.rating})',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "${location.ratingCount} reviews",
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ],
        ),
        Text(
          location.description,
          style: TextStyle(
            color: const Color.fromARGB(255, 222, 221, 221),
            fontSize: 13,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Read More',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    ),
  );
}

Widget Stars(double rating, int totalStars) {
  return Row(
    children: List.generate(
      totalStars,
      (index) {
        if (index < rating.floor()) {
          return Icon(
            Icons.star_rounded,
            color: Colors.amber,
            size: 20,
          );
        } else if (index < rating) {
          return Icon(
            Icons.star_half_rounded,
            color: Colors.amber,
            size: 20,
          );
        } else {
          return Icon(
            Icons.star_border,
            color: Colors.amber,
            size: 19,
          );
        }
      },
    ),
  );
}
