import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class ColorSwitchWidget extends StatelessWidget {
  const ColorSwitchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.find();
    return Expanded(
      child: Align(
        child: ElevatedButton(
            key: const Key('ColorButton'),
            onPressed: () {
              // here we create the event
              myController.changeColor();
            },
            child: const Text('Change color (create event)')),
      ),
    );
  }
}
