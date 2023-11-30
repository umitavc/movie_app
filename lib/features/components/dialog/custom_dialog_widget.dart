import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/extensions/context_extension.dart';
import 'package:movie_app/shared/colors.dart';
final class AppDialogs {
  factory AppDialogs() => instance;

  const AppDialogs._internal();
  static const AppDialogs instance = AppDialogs._internal();

  ///
  /// Custom Success or Failure Dialog
  ///

  Future<T?> showCustomDialog<T>(
    BuildContext context, {
    void Function()? onPressedButton,
    String title = '',
    List<Widget> subtitles = const [],
    String nextRouteButtonText = '',
    Widget? search,
    String refreshRouteButtonText = 'Refresh',
    bool isActive = false,
    bool isError = false,
  }) async {
    final alert = AlertDialog(
      scrollable: true,

      //insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: context.width * .70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            if (title != '')
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(onTap: () => context.popRoute(), child: const Icon(Icons.close,color: Colors.black),),
                ],
              )
            else
              Container(),
            const SizedBox(
              height: 20,
            ),
            if (subtitles.isNotEmpty) ...[
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: context.height * .2),
                child: Column(
                   mainAxisSize: MainAxisSize.min,
                  children: subtitles,
                ),
              ),
            ] else
              const SizedBox(),
          ],
        ),
      ),
      actions: [
        if (isActive) Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
          child:  InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              if (onPressedButton != null) {
                onPressedButton();
              } else {
                context.popRoute();
              }
            },
            child: Container(
              height: kMinInteractiveDimension,
              decoration: BoxDecoration(color: AppColors.scaffoldBgColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  nextRouteButtonText,
                  style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ) else Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          if (onPressedButton != null) {
                            onPressedButton();
                          } else {
                            //context.popRoute();
                          }
                        },
                        child: Container(
                          height: kMinInteractiveDimension,
                          decoration: BoxDecoration(
                            color: AppColors.greyColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.greyColor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              refreshRouteButtonText,
                              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.greyColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          if (onPressedButton != null) {
                            onPressedButton();
                          } else {
                            context.popRoute();
                          }
                        },
                        child: Container(
                          height: kMinInteractiveDimension,
                          decoration: BoxDecoration(color: AppColors.scaffoldBgColor, borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              nextRouteButtonText,
                              style: const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );

    return showDialog<T?>(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}