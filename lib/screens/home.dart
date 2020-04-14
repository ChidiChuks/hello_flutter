import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurple,
      child: new Center(
        child: new Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 36.0),
        ),
      ),
    );
  }
  String sayHello() {
    String hello;
    String dayTime;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    int second = now.second;

    if(hour < 12) {
      hello = "Good Morning";
    }
    else if (hour < 18) {
      hello = "Good Afternoon";
    }
    else {
      hello = "Good Evening";
    }
    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    // To check that the day time is either morning (am) or evening (pm)
    if (hello == "Good Morning") {
      dayTime = "am";
    } else if (hello == "Good Afternoon" || hello == "Good Evening") {
      dayTime = "pm";
    }

    return "It's now " + hour.toString() + ":" + minutes + ":" + second.toString() + dayTime +". \n" + hello;
  }
}
