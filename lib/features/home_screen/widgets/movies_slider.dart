import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_constants.dart';

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 200,
                  width: 150,
                  child: Image.network(
                      '${Constants.imagePath}${snapshot.data[index].posterPath}',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                ),
              ),
            );
          }),
    );
  }
}
