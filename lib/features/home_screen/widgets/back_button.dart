import 'package:flutter/material.dart';
import 'package:movie_app/shared/colors.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
             
              color: AppColors.scaffoldBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
          );
  }
}