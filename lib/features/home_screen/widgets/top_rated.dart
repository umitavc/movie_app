import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/api_constants.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: double.infinity,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: Image.network(
                              '${Constants.imagePath}${snapshot.data[index].posterPath}',
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data[index].title,
                                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    snapshot.data[index].overview,
                                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
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
                                        text: '${snapshot.data[index].voteAverage?.toStringAsFixed(1)}/10',
                                        style: CustomTextStyleEnum.s16w400,
                                        textColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
