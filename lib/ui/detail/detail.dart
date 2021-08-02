import 'package:akaarit/utilities/color_enums.dart';
import 'package:akaarit/utilities/common_objects.dart';
import 'package:akaarit/utilities/image_enums.dart';
import 'package:akaarit/utilities/reuseablw/pointcard.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  static const routeName = '/product-detail';

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: CustomColor.blackGray),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "Next",
                style: TextStyle(
                    color: CustomColor.secondaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 210,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(
                    left: bCon.hbSize(1), right: bCon.hbSize(1)),
                child: Image.asset(
                  CustomImages.detail,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: bCon.hbSize(3),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: bCon.vbSize(2),
                right: bCon.vbSize(2),
              ),
              child: Text(
                "App itu OTC Market ?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: bCon.vbSize(2),
                  right: bCon.vbSize(2),
                  top: bCon.hbSize(1)),
              child: Text(
                "1.500 Poin",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: bCon.hbSize(5),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: bCon.vbSize(2),
                  right: bCon.vbSize(2),
                  top: bCon.hbSize(1)),
              child: Text(
                "Dalam video kali ini Anda akan mengetahui konsep trading di DMA & CFD & bagaimana Anda bisa menjual sebuah instrument padahal tidak memiliki instrumennya.",
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
