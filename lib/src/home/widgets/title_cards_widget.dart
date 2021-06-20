import 'package:flutter/material.dart';

import '../../core/text_styles.dart';
import 'included_with_prime_label_widget.dart';
import 'media_cards_list_renderer_widget.dart';

class TitleCardsWidget extends StatelessWidget {
  const TitleCardsWidget({
    Key? key,
    required this.title,
    required this.imagesUrl,
    this.showPlayButton = false,
    this.showPrimeIncluded = false,
  }) : super(key: key);

  final String title;
  final List<String> imagesUrl;
  final bool showPlayButton;
  final bool showPrimeIncluded;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IncludedWithPrimeLabelWidget(
                showPrimeIncluded: showPrimeIncluded,
              ),
              Text(
                title,
                style: TextStyles.titleStyle,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        MediaCardsListRendererWidget(
          imagesUrl: imagesUrl,
          showPlayButton: showPlayButton,
        ),
      ],
    );
  }
}
