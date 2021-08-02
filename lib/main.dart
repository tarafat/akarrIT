import 'package:akaarit/ui/detail/detail.dart';
import 'package:akaarit/ui/home/home.dart';
import 'package:akaarit/utilities/common_objects.dart';
import 'package:akaarit/utilities/responsive_configuration/block_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ud_design/ud_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        Detail.routeName: (ctx) => Detail(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bCon.init(context);
    UdDesign.init(context);
    //getting device type (Mobile or Tab)
    String deviceType = BlockConfiguration.deviceType;

    double defaultScreenWidth;
    double defaultScreenHeight;
    //assigning value of default screen width and height based on device type
    if (deviceType == 'mobile') {
      defaultScreenWidth = 414.0;
      defaultScreenHeight = 896.0;
    } else if (deviceType == 'tab') {
      defaultScreenWidth = 768;
      defaultScreenHeight = 1024;
    }
    //setting screen height and width for auto scaling
    ScreenUtil.init(
      context,
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    );
    return SafeArea(
      child: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
