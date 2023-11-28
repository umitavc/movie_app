
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/core/extensions/context_extension.dart';
import 'package:movie_app/features/home_screen/movies_detail_screen.dart';

class TrendlerSlider extends StatelessWidget {
  const TrendlerSlider({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: CarouselSlider.builder(
            itemCount: snapshot.data!.length,
            options: CarouselOptions(
              height: 300,
              viewportFraction: 0.55,
              enlargeCenterPage: true,
              pageSnapping: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(seconds: 1),
            ),
            itemBuilder: (context, itemIndex, pageViwIndex) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MoviesDetailScreen(movie: snapshot.data[itemIndex],))); 
                } ,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: context.width,
                    height: context.height * 0.3,
                    child: Image.network(
                      '${Constants.imagePath}${snapshot.data[itemIndex].posterPath}',
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              );
            }));
  }
}
