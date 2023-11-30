import 'package:flutter/material.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';

class FilterSubTitleWidget extends StatelessWidget {
   FilterSubTitleWidget({super.key});

  final List<String> filter = ['Rating', 'Release date', 'Comments',];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         ListView.builder(
          shrinkWrap: true,
          itemCount: filter.length,
          itemBuilder: (context, index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: filter[index],
                  style: CustomTextStyleEnum.s18w500,
                  textColor: Colors.black,
                ),
                const Icon(Icons.circle_outlined, color: Colors.black,)
              ],
            );
        }),
      ],
    );
  }
}
