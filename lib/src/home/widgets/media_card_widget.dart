import 'package:flutter/material.dart';

import 'play_button_widget.dart';

class MediaCardWidget extends StatelessWidget {
  const MediaCardWidget({
    Key? key,
    required this.imageUrl,
    required this.showPlayButton,
  }) : super(key: key);

  final String imageUrl;
  final bool showPlayButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Card(
          child: Image.network(imageUrl),
        ),
        showPlayButton ? PlayButtonWidget() : const SizedBox.shrink(),
      ],
    );
  }
}
