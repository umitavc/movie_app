import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/core/extensions/context_extension.dart';
import 'package:movie_app/data/models/movies_model.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';
import 'package:movie_app/shared/colors.dart';

class MoviesDetailScreen extends StatelessWidget {
  const MoviesDetailScreen({super.key, required this.movie});

  final MoviesModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          leading: const BackButton(),
          backgroundColor: AppColors.scaffoldBgColor,
          expandedHeight: context.height * 0.5,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              movie.title.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            background: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Image.network(
                '${Constants.imagePath}${movie.backdropPath}',
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: context.paddingDefault,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const CustomTextWidget(
                text: 'Overview',
                style: CustomTextStyleEnum.s20w400,
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                movie.overview.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const CustomTextWidget(
                            text: 'Release Date: ',
                            style: CustomTextStyleEnum.s16w400,
                            textColor: Colors.white,
                          ),
                          CustomTextWidget(
                            text: movie.releaseDate.toString(),
                            style: CustomTextStyleEnum.s16w400,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const CustomTextWidget(
                            text: 'Rating: ',
                            style: CustomTextStyleEnum.s16w400,
                            textColor: Colors.white,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          CustomTextWidget(
                            text: '${movie.voteAverage?.toStringAsFixed(1)}/10',
                            style: CustomTextStyleEnum.s16w400,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    ));
  }
}
