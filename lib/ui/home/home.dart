import 'package:akaarit/ui/academy/academy.dart';
import 'package:akaarit/utilities/color_enums.dart';
import 'package:akaarit/utilities/common_objects.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentTab = "academy";

  @override
  Widget build(BuildContext context) {
    _changeTabSelection(String selection) {
      setState(() {
        currentTab = selection;
      });
    }

    bool academy = currentTab == "academy";
    bool signal = currentTab == "signal";
    bool roadmap = currentTab == "roadmap";

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: bCon.hbSize(2), top: bCon.hbSize(4)),
          child: Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Trading Strategy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                )),
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                height: bCon.vbSize(90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: bCon.hbSize(3),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    _changeTabSelection("academy");
                                  },
                                  child: Text(
                                    "Academy",
                                    style: TextStyle(
                                        color: academy
                                            ? CustomColor.blackGray
                                            : CustomColor.inactiveColor),
                                  )),
                              SizedBox(width: bCon.hbSize(10)),
                              TextButton(
                                  onPressed: () {
                                    _changeTabSelection("signal");
                                  },
                                  child: Text(
                                    "Signal",
                                    style: TextStyle(
                                        color: signal
                                            ? CustomColor.blackGray
                                            : CustomColor.inactiveColor),
                                  )),
                              SizedBox(width: bCon.hbSize(10)),
                              TextButton(
                                onPressed: () {
                                  _changeTabSelection("roadmap");
                                },
                                child: Text(
                                  "Roadmap",
                                  style: TextStyle(
                                      color: roadmap
                                          ? CustomColor.blackGray
                                          : CustomColor.inactiveColor),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                color: Colors.black.withOpacity(0.05),
                                width: double.infinity,
                                height: bCon.hbSize(1),
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      color: academy
                                          ? CustomColor.blackGray
                                          : Colors.transparent,
                                      width: double.infinity,
                                      height: bCon.hbSize(.3),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: signal
                                          ? CustomColor.blackGray
                                          : Colors.transparent,
                                      width: double.infinity,
                                      height: bCon.hbSize(.3),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: roadmap
                                          ? CustomColor.blackGray
                                          : Colors.transparent,
                                      width: double.infinity,
                                      height: bCon.hbSize(.3),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: bCon.hbSize(1.5)),
                    Expanded(
                        child: academy
                            ? Academy("Academy")
                            : signal
                                ? Academy("signal")
                                : roadmap
                                    ? Academy("Roadmap")
                                    : Academy("Academy"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
