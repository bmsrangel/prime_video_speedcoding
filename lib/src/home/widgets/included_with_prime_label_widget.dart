import 'package:flutter/material.dart';

import '../../core/text_styles.dart';

class IncludedWithPrimeLabelWidget extends StatelessWidget {
  const IncludedWithPrimeLabelWidget({
    Key? key,
    this.showPrimeIncluded = false,
  }) : super(key: key);

  final bool showPrimeIncluded;

  @override
  Widget build(BuildContext context) {
    return showPrimeIncluded
        ? Text(
            'Incluído com o Prime',
            style: TextStyles.titleStyle.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          )
        : const SizedBox.shrink();
  }
}
