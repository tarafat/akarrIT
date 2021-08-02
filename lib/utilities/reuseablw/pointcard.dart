import 'package:akaarit/ui/academy/academy.dart';
import 'package:flutter/material.dart';

import '../color_enums.dart';
import '../common_objects.dart';

class TrainingPoint extends StatelessWidget {
  const TrainingPoint({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final Academy widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColor.secondaryColor,
      child: Container(
          height: bCon.vbSize(8),
          width: bCon.hbSize(97),
          child: Stack(
            children: [
              Positioned(
                  left: 10,
                  top: 12,
                  child: Text(
                    "My Trading " + widget.pageName,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(.9),
                      fontWeight: FontWeight.w600,
                      // fontFamily: "Poppins",
                    ),
                  )),
              Positioned(
                left: 10,
                top: 35,
                child: Text(
                  "Training Completion Point",
                  style: TextStyle(
                      fontSize: 10, color: Colors.white.withOpacity(.4)),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Text(
                  "0",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white.withOpacity(.9),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          )),
    );
  }
}
