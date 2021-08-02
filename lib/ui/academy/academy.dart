import 'dart:ui';

import 'package:akaarit/utilities/color_enums.dart';
import 'package:akaarit/utilities/common_objects.dart';
import 'package:akaarit/utilities/image_enums.dart';
import 'package:akaarit/utilities/reuseablw/itemsegment.dart';
import 'package:akaarit/utilities/reuseablw/pointcard.dart';
import 'package:flutter/material.dart';

class Academy extends StatefulWidget {
  final String pageName;

  const Academy(this.pageName);
  @override
  _AcademyState createState() => _AcademyState();
}

class _AcademyState extends State<Academy> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TrainingPoint(widget: widget),
          Itemsegment(segType: "Basic", secondText: "Lihat Semua"),
          Itemsegment(segType: "Intermediate", secondText: "Lihat Semua"),
          Itemsegment(segType: "Advance", secondText: "Lihat Semua"),
        ],
      ),
    );
  }
}
