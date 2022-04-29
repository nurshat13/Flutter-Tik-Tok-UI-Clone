import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../const.dart';

Widget get carusel => CarouselSlider.builder(
      itemCount: kCaruselImgsUrl.length,
      options: CarouselOptions(
        autoPlay: true,
      ),
      itemBuilder: (context, index, realIndex) {
        final irlImage = kCaruselImgsUrl[index];
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(irlImage),
            fit: BoxFit.fitWidth,
          )),
        );
      },
    );
