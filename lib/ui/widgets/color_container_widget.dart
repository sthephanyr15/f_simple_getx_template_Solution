import 'package:f_simple_getx_template/ui/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.find();
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          // here we are listening for changes on the isRed variable that is on the
          // controller
          child: Obx(
            () => Container(
                key: const Key('ColorContainer'),
                color: myController.isRed ? Colors.red : Colors.blue,
                child: const Center(
                    child: Text(
                        'This container will change color depending on the App state'))),
          )),
    );
  }
}
