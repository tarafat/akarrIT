import 'package:akaarit/ui/detail/detail.dart';
import 'package:flutter/material.dart';

import '../color_enums.dart';
import '../common_objects.dart';
import '../image_enums.dart';

class Itemsegment extends StatelessWidget {
  final String segType;
  final String secondText;

  const Itemsegment({this.segType, this.secondText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Detail.routeName);
      },
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 8, bottom: 5, right: 8),
            child: Row(
              children: [
                Text(
                  segType,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Text(
                  secondText,
                  style: TextStyle(
                      color: CustomColor.secondaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: bCon.vbSize(24),
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(.1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Image.asset(CustomImages.logo),
                        Positioned(
                          top: 90,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 5, left: 8),
                            child: Text(
                              "App itu OTC Market ?",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, left: 8),
                            child: Text(
                              "1.500 Poin",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
