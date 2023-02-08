import 'package:flutter/material.dart';

import 'screens/calculator.dart';
import 'utils/size_config.dart';

void main() => runApp(
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
