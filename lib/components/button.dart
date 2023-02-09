import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/size_config.dart';

class Button extends StatelessWidget {
  const Button.operation({
    super.key,
    required this.text,
    required this.onPressed,
    this.widget,
  });

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.widget,
  });

  final String text;
  final Widget? widget;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.fs_1_2,
        ),
        child: NeumorphicButton(
          style: NeumorphicStyle(
            depth: 1.5,
            intensity: 2,
            surfaceIntensity: 0.3,
            lightSource: LightSource.topLeft,
            shadowLightColor:
                !SizeConfig.isDarkMode ? Colors.black26 : Colors.white54,
            shadowDarkColor:
                !SizeConfig.isDarkMode ? Colors.black26 : Colors.white30,
            color: SizeConfig.isDarkMode ? Colors.black : Colors.white70,
            boxShape: const NeumorphicBoxShape.circle(),
            shape: NeumorphicShape.concave,
          ),
          child: Container(
            alignment: Alignment.center,
            width: SizeConfig.width_23,
            height: SizeConfig.width_23,
            child: widget ??
                Text(
                  text,
                  style: TextStyle(
                    color: !SizeConfig.isDarkMode ? Colors.black : Colors.white,
                    fontSize: SizeConfig.fs_04,
                    fontWeight: FontWeight.w600,
                  ),
                ),
          ),
          onPressed: () => onPressed(text),
        ),
      ),
    );
  }
}
