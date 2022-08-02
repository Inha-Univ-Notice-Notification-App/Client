import 'package:flutter/material.dart';

void main() {
  runApp(const SettingAlarmOff());
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

// setting_button -> show SettingHome Dialog
class SettingButton extends StatelessWidget {
  const SettingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.density_medium_rounded),
      tooltip: 'Show Settings',
      onPressed: (){
        showDialog(context: context, builder: (context){
          return SettingHome();
        });
      },
    );
  }
}


// setting_home -> Dialog // must have MaterialApp as a parent
class SettingHome extends StatelessWidget {
  const SettingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        // how to align this left??
        height: double.infinity,
        width: 200, // have to change
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded), // three dots
              onPressed:(){} // should put Home_page1
            )
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: (){},// change screen to alarm setting
                  child: ListTile(
                      leading: Text('알람설정'),
                      title: Icon(Icons.arrow_forward_ios_rounded)
                  )),
              ElevatedButton(onPressed: (){},// change screen to alarm setting
                  child: ListTile(
                      leading: Text('즐겨찾기'),
                      title: Icon(Icons.arrow_forward_ios_rounded)
                  )),
              ElevatedButton(onPressed: (){},// change screen to alarm setting
                  child: ListTile(
                      leading: Text('팀 오늘의 인하'),
                      title: Icon(Icons.arrow_forward_ios_rounded)
                  ))
            ]
          )
        )
    )
    );
  }
}

// setting_alarm_off
class SettingAlarmOff extends StatelessWidget {
  const SettingAlarmOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container()
      )
    );
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

// upper part of setting
class SettingTop extends StatelessWidget {
  const SettingTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions:[Icon(Icons.arrow_back_ios_new_rounded)],
        title: Text('알림 설정', style: TextStyle(fontWeight: FontWeight.bold))
    );
  }
}
