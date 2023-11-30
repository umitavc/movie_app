import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/core/routers/app_router.dart';
import 'package:movie_app/core/services/api_services.dart';
import 'package:movie_app/data/models/movies_model.dart';
import 'package:movie_app/features/components/dialog/custom_dialog_widget.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';
import 'package:movie_app/features/home_screen/widgets/filter_subtitle_widget.dart';
import 'package:movie_app/features/home_screen/widgets/top_rated.dart';

@RoutePage()
class RatedSeeAllScreen extends StatefulWidget {
  const RatedSeeAllScreen({
    super.key,
  });

  @override
  State<RatedSeeAllScreen> createState() => _RatedSeeAllScreenState();
}

class _RatedSeeAllScreenState extends State<RatedSeeAllScreen> {
  late Future<List<MoviesModel>> ratedMovies;

  @override
  void initState() {
    super.initState();
    ratedMovies = ApiServices().getRatedMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
            child: CustomTextWidget(
          text: 'Rated Movies',
          style: CustomTextStyleEnum.s24w400,
          textColor: Colors.white,
        )),
        actions: [
          IconButton(
              onPressed: () {
                AppDialogs.instance.showCustomDialog<void>(
                  context,
                  title: 'Filter',
                  nextRouteButtonText: 'Save',
                  subtitles: [
                    FilterSubTitleWidget(),
                  ],
                  isActive: true,
                  onPressedButton: () {
                    context.router.push(const RatedSeeAllRoute());
                  },
                );
              },
              icon: const Icon(Icons.filter_alt))
        ],
      ),
      body: SizedBox(
        child: FutureBuilder(
            future: ratedMovies,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              } else if (snapshot.hasData) {
                return TopRatedWidget(
                  snapshot: snapshot,
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
