import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carousel_card_widget.dart';
import 'carousel_indicator_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: widget.images
              .map((imgUrl) => CarouselCardWidget(
                    imageUrl: imgUrl,
                  ))
              .toList(),
          options: CarouselOptions(
            aspectRatio: 16 / 7,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, _) => setState(() => currentIndex = index),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.images.length,
            (index) => CarouselIndicatorWidget(
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ],
    );
  }
}
