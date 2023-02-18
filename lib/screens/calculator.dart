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
      color: SizeConfig.isDarkMode ? Colors.black : Colors.white,
      home: Scaffold(
        backgroundColor: SizeConfig.isDarkMode ? Colors.black : Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(SizeConfig.fs_1_5),
                child: NeumorphicText(
                  "Calculator",
                  style: NeumorphicStyle(
                    color: !SizeConfig.isDarkMode ? Colors.black : Colors.white,
                    lightSource: LightSource.topLeft,
                    shadowLightColor:
                        SizeConfig.isDarkMode ? Colors.white54 : Colors.black54,
                    shadowDarkColor:
                        SizeConfig.isDarkMode ? Colors.white24 : Colors.black26,
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontSize: SizeConfig.fs_06,
                  ),
                ),
              ),
              Display(
                previousText: double.parse(memory.previousValue) ==
                        double.parse(memory.value)
                    ? ""
                    : '${memory.previousValue} ${memory.operatorString}',
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
