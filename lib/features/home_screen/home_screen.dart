import 'package:flutter/material.dart';
import 'package:movie_app/core/enums/custom_text_style_enum/custom_text_style_enum.dart';
import 'package:movie_app/features/components/text/custom_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(
            child:  Column(
      children: [
        CustomTextWidget(text: 'Movie App', style: CustomTextStyleEnum.s24w500, textColor: Colors.white,),
      ],
    )));
  }
}
