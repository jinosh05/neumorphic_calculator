import 'package:flutter/material.dart';

import 'screens/calculator.dart';
import 'utils/size_config.dart';

void main() async {
  await Future.delayed(const Duration(seconds: 1));
  runApp(
    LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfig().init(constraints, orientation);
            return const Calculator();
          },
        );
      },
    ),
  );
}
