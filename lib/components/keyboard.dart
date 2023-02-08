import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neumorphic_calculator/utils/size_config.dart';

import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({
    super.key,
    required this.onPressed,
  });

  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 62,
      child: Column(
        children: <Widget>[
          ButtonRow(
            buttons: [
              Button(
                text: 'AC',
                onPressed: onPressed,
              ),
              Button(
                text: 'C',
                onPressed: onPressed,
              ),
              Button(
                text: '%',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '/',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '7',
                onPressed: onPressed,
              ),
              Button(
                text: '8',
                onPressed: onPressed,
              ),
              Button(
                text: '9',
                onPressed: onPressed,
              ),
              Button.operation(
                text: 'x',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '4',
                onPressed: onPressed,
              ),
              Button(
                text: '5',
                onPressed: onPressed,
              ),
              Button(
                text: '6',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '-',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '1',
                onPressed: onPressed,
              ),
              Button(
                text: '2',
                onPressed: onPressed,
              ),
              Button(
                text: '3',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '+',
                onPressed: onPressed,
              ),
            ],
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '00',
                onPressed: onPressed,
              ),
              Button(
                text: '0',
                onPressed: onPressed,
              ),
              Button(
                text: '.',
                onPressed: onPressed,
              ),
              Button.operation(
                text: '=',
                onPressed: onPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
