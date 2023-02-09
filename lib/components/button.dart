import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/size_config.dart';

class Button extends StatelessWidget {
  const Button.operation({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.widget,
  });

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.widget,
  });

  final String text;
  final Widget? widget;
  final bool isBig;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: isBig ? null : Alignment.center,
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.imgSize_1 / 2,
        ),
        child: NeumorphicButton(
          padding: EdgeInsets.all(
            SizeConfig.fs_03_5,
          ),
          style: NeumorphicStyle(
            depth: 3,
            surfaceIntensity: 0.3,
            lightSource: LightSource.topLeft,
            shadowLightColor:
                !SizeConfig.isDarkMode ? Colors.black54 : Colors.white54,
            shadowDarkColor:
                !SizeConfig.isDarkMode ? Colors.black38 : Colors.white30,
            color: SizeConfig.isDarkMode ? Colors.black : Colors.white,
            boxShape: const NeumorphicBoxShape.circle(),
            shape: NeumorphicShape.concave,
          ),
          child: widget ??
              Text(
                text,
                style: TextStyle(
                  color: !SizeConfig.isDarkMode ? Colors.black : Colors.white,
                  fontSize: SizeConfig.fs_04,
                  fontWeight: FontWeight.w600,
                ),
              ),
          onPressed: () => onPressed(text),
        ),
      ),
    );
  }
}
