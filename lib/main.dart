import 'package:flutter/material.dart';

void main() {
  runApp(const SettingHome());
}
// loading1
class Loading1 extends StatelessWidget {
  const Loading1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child:
                Image.asset('assets/logo1.png', width: 100, height: 100),
              ),
              Container(
                child:
                Image.asset('assets/logo2.png', width: 200, height: 200),
              )
            ]
        )
    );
  }
}
// loading2
class Loading2 extends StatelessWidget {
  const Loading2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 70, 10, 10),
              child:
              Image.asset('assets/logo1.png', width: 100, height: 100),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 200, 10, 10),
              child: ElevatedButton( onPressed:(){}, child:Text('시작하기', style: TextStyle(letterSpacing: 4.0, fontSize: 17, fontWeight: FontWeight.w600)),
              style: ElevatedButton.styleFrom(elevation: 10.0,  primary: Color(0xff005BAC), onPrimary: Colors.white, minimumSize: Size(280, 50))),
            ),
            Container(
              child:
              Image.asset('assets/logo2.png', width: 200, height: 200),
            )
          ]
      )
    );
  }
}
// setting_home
class SettingHome extends StatelessWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingAlarmOff extends StatelessWidget {
  const SettingAlarmOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingAlarmOn extends StatelessWidget {
  const SettingAlarmOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SettingTag extends StatelessWidget {
  const SettingTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TeamIntro extends StatelessWidget {
  const TeamIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

