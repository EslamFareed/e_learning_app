import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../components/sizes_screen.dart';

class AdsView extends StatelessWidget {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: const EdgeInsets.all(10),
          width: SizesScreen.width,
          height: SizesScreen.height * .3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk="),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: SizesScreen.height * .3,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 2),
      ),
    );
  }
}
