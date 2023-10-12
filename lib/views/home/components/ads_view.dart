import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_app/controllers/courses/courses_cubit.dart';
import 'package:flutter/material.dart';

import '../../../components/sizes_screen.dart';

class AdsView extends StatelessWidget {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: CoursesCubit.get(context).ads.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.all(10),
          width: SizesScreen.width,
          height: SizesScreen.height * .3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(CoursesCubit.get(context).ads[index].image!),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: SizesScreen.height * .3,
        enlargeCenterPage: true,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 2),
      ),
    );
  }
}
