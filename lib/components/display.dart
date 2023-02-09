import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_calculator/utils/size_config.dart';

class Display extends StatelessWidget {
  const Display({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: SizeConfig.isDarkMode ? Colors.black : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 60,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.none,
                  fontSize: 60,
                  color: !SizeConfig.isDarkMode ? Colors.black : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
