import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Task",
    home:ClockTask(),
  ));
}
class Clock{
  String  flag;
  String  title;
  String  desc;
  String  time;

  Clock({this.flag, this.title, this.desc, this.time});
}
 List<Clock> items= [
   Clock(flag: 'add_alarm.png', title: 'india', desc: 'Today, +2HRS', time: '10:25'),
   Clock(flag: 'add_alarm.png', title: 'London', desc: 'UK(GMT),+4HRS', time: '04:25'),
   Clock(flag: 'add_alarm.png', title: 'Tokyo', desc: 'Japan (GMT+9)', time: '14:25'),
   Clock(flag: 'add_alarm.png', title: 'Nepal', desc: 'Nepal (GMT+5:45)', time: '10:35')
];

class ClockTask extends StatefulWidget {
  @override
  _ClockTaskState createState() => _ClockTaskState();
}

class _ClockTaskState extends State<ClockTask> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Clock",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "8:48",
                    style: TextStyle(color: Colors.blue, fontSize: 50),
                  ),
                  Text(
                    "pm",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wed,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "26,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "Aug,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.white70,
                  ),
                  Text(
                    "Mon,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "8:00,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "am,",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: ListView.builder(
                        itemBuilder:(context, int index){
                          return Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Image.asset('assets/'+ items[index].flag
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                                items[index].title,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3.0,
                                            ),
                                            Text(items[index].desc,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(items[index].time,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                            ],
                          );
                        },
                      itemCount: items.length,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}