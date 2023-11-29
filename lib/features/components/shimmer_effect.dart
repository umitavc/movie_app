import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer getTrendingShimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[100]!,
    child: Row(
      children: [
        Center(
            child: Container(
          height: 200,
          width: 75,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
          ),
        )),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 300,
          width: 200,
         decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Center(
            child: Container(
          height: 200,
          width: 75,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Colors.white,
          ),
        )),
      ],
    ),
  );
}

Shimmer getRatedShimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[100]!,
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),

        
      ],
    ),
  );
}

Shimmer getUpComingShimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[400]!,
    highlightColor: Colors.grey[100]!,
    child:Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         Container(
          height: 170,
          width: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
        ),

        
      ],
    ),
  );
}
