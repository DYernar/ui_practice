import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: ScreenUtil().setHeight(1600.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(1, 129, 202, 1),
                Color.fromRGBO(36, 107, 186, 1),
              ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(ScreenUtil().setHeight(120.0)),
                bottomRight: Radius.circular(ScreenUtil().setHeight(120.0)),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(150.0),
          ),
          buttonsRow(),
          SizedBox(
            height: ScreenUtil().setHeight(200.0),
          ),
          bottomRow(),
        ],
      ),
    );
  }

  Widget bottomRow() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setHeight(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Clean",
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: ScreenUtil().setSp(50.0),
              letterSpacing: ScreenUtil().setHeight(5),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Enter device",
            style: TextStyle(
              color: Colors.blue[800],
              fontSize: ScreenUtil().setSp(50.0),
              letterSpacing: ScreenUtil().setHeight(5),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(40.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: ScreenUtil().setHeight(180.0),
            height: ScreenUtil().setHeight(180.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent[100]!.withOpacity(0.2),
              borderRadius: BorderRadius.circular(90.0),
            ),
            child: Center(
              child: Icon(
                Icons.alarm,
                color: Colors.blueAccent[100]!.withOpacity(0.5),
                size: ScreenUtil().setHeight(100.0),
              ),
            ),
          ),
          Container(
            width: ScreenUtil().setHeight(230.0),
            height: ScreenUtil().setHeight(230.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                ScreenUtil().setHeight(115.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent[400]!.withOpacity(0.3),
                  blurRadius: ScreenUtil().setHeight(200.0),
                  offset: Offset(
                    ScreenUtil().setHeight(0),
                    ScreenUtil().setHeight(100.0),
                  ),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.blueAccent[400],
                size: ScreenUtil().setHeight(150.0),
              ),
            ),
          ),
          Container(
            width: ScreenUtil().setHeight(180.0),
            height: ScreenUtil().setHeight(180.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent[100]!.withOpacity(0.2),
              borderRadius: BorderRadius.circular(90.0),
            ),
            child: Center(
              child: Icon(
                Icons.calendar_today_outlined,
                color: Colors.blueAccent[100]!.withOpacity(0.5),
                size: ScreenUtil().setHeight(100.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
