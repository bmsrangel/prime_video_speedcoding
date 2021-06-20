import 'package:flutter/material.dart';

import 'media_card_widget.dart';

class MediaCardsListRendererWidget extends StatelessWidget {
  const MediaCardsListRendererWidget({
    Key? key,
    required this.imagesUrl,
    required this.showPlayButton,
  }) : super(key: key);

  final List<String> imagesUrl;
  final bool showPlayButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      child: ListView.builder(
        itemCount: imagesUrl.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        itemBuilder: (_, index) => MediaCardWidget(
          imageUrl: imagesUrl[index],
          showPlayButton: showPlayButton,
        ),
      ),
    );
  }
}
