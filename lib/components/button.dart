import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../utils/size_config.dart';

class Button extends StatelessWidget {
  const Button.operation({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
  });

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
  });

  final String text;
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
          style: const NeumorphicStyle(
            depth: 3,
            surfaceIntensity: 0.3,
            lightSource: LightSource.topLeft,
            shadowLightColor: Colors.white54,
            shadowDarkColor: Colors.white30,
            color: Colors.black,
            boxShape: NeumorphicBoxShape.circle(),
            shape: NeumorphicShape.concave,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
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
