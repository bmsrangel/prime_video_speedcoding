import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/title_cards_widget.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselWidget(
            images: Constants.carouselImages,
          ),
          TitleCardsWidget(
            title: 'Filmes e séries para assistir a seguir',
            showPlayButton: true,
            imagesUrl: List.generate(5, (index) => Constants.baseUrl),
          ),
          TitleCardsWidget(
            title: 'Amazon Originals e exclusivos',
            showPrimeIncluded: true,
            imagesUrl: List.generate(5, (index) => Constants.baseUrl),
          ),
          TitleCardsWidget(
            title: 'Filmes recomendados',
            showPrimeIncluded: true,
            imagesUrl: List.generate(5, (index) => Constants.baseUrl),
          ),
          TitleCardsWidget(
            title: 'Filmes adicionados recentemente',
            showPrimeIncluded: true,
            imagesUrl: List.generate(5, (index) => Constants.baseUrl),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
