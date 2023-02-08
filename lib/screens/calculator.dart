import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/utils/size_config.dart';

import '../components/display.dart';
import '../components/keyboard.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(SizeConfig.fs_1_5),
                child: NeumorphicText(
                  "Calculator",
                  style: const NeumorphicStyle(
                    color: Colors.white,
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.black54,
                    shadowDarkColor: Colors.black26,
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontSize: SizeConfig.fs_06,
                  ),
                ),
              ),
              Display(
                text: memory.value,
              ),
              Keyboard(
                onPressed: _onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
