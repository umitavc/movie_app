
import 'package:flutter/material.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/core/extensions/context_extension.dart';
import 'package:movie_app/core/services/api_services.dart';
import 'package:movie_app/data/models/movies_model.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';
import 'package:movie_app/features/home_screen/widgets/movies_slider.dart';
import 'package:movie_app/features/home_screen/widgets/trendler_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<MoviesModel>> trendingMovies;
  late Future<List<MoviesModel>> ratedMovies;
  late Future<List<MoviesModel>> upcomingMovies;

  @override
  void initState() {
    super.initState();
    trendingMovies = ApiServices().getTrendingMovie();
    ratedMovies = ApiServices().getRatedMovie();
    upcomingMovies = ApiServices().getUpcomingMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: context.paddingDefault,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CustomTextWidget(
                text: 'Movie App',
                style: CustomTextStyleEnum.s24w500,
                textColor: Colors.white,
              ),
            ),
            const CustomTextWidget(
              text: 'Trendler',
              style: CustomTextStyleEnum.s20w400,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: FutureBuilder(
                  future: trendingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      return TrendlerSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextWidget(
              text: 'Top rated movies',
              style: CustomTextStyleEnum.s20w400,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: FutureBuilder(
                  future: ratedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      return MoviesSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextWidget(
              text: 'Top rated movies',
              style: CustomTextStyleEnum.s20w400,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              child: FutureBuilder(
                  future: upcomingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    } else if (snapshot.hasData) {
                      return MoviesSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          ],
        ),
      ),
    )));
  }
}
