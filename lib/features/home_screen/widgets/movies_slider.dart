
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/features/home_screen/movies_detail_screen.dart';


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
          itemCount: 12,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => MoviesDetailScreen(movie: snapshot.data[index],))); 
                  
                },
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
              ),
            );
          }),
    );
  }
}
