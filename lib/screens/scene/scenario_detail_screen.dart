import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScenarioDetailScreen extends StatefulWidget {
  final String scenarioChoice;

  ScenarioDetailScreen({required this.scenarioChoice});

  @override
  State<ScenarioDetailScreen> createState() => _ScenarioDetailScreenState();
}

class _ScenarioDetailScreenState extends State<ScenarioDetailScreen> {
  bool motionSensor = false;
  bool lightBulb = false;
  bool temperatureSensor = false;
  bool fan = false;
  bool isExpand = false;
  bool isExpand2 = false;

  @override
  void initState() {
    super.initState();
    getDataScenario();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  (widget.scenarioChoice == "1") ? 'Skenario 1' : 'Skenario 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              (widget.scenarioChoice == "1")
                  ? showScenario(
                      'Skenario 1',
                      'Motion Sensor',
                      motionSensor,
                      'Lampu',
                      lightBulb,
                      'Gerak',
                      'Tidak',
                    )
                  : showScenario(
                      'Skenario 2',
                      'Sensor Suhu',
                      temperatureSensor,
                      'Kipas',
                      fan,
                      '24°C',
                      '26°C',
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showScenario(
    String scenarioNum,
    String title1,
    bool option1,
    String title2,
    bool option2,
    String title1Choice1,
    String title1Choice2,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Kondisi',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            height: 60,
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Motion Sensor',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (isExpand) {
                        isExpand = false;
                      } else {
                        isExpand = true;
                      }
                    });
                  },
                  icon: (isExpand)
                      ? Icon(Icons.keyboard_arrow_down)
                      : Icon(Icons.keyboard_arrow_up),
                )
              ],
            ),
          ),
        ),
        (isExpand)
            ? Column(
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title1Choice1,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: (option1) ? true : false,
                              onChanged: null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title1Choice2,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: (option1) ? false : true,
                              onChanged: null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container(),
        SizedBox(
          height: 16,
        ),
        Text(
          'Melaksanakan Tugas',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            height: 60,
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title2,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (isExpand2) {
                        isExpand2 = false;
                      } else {
                        isExpand2 = true;
                      }
                    });
                  },
                  icon: (isExpand2)
                      ? Icon(Icons.keyboard_arrow_down)
                      : Icon(Icons.keyboard_arrow_up),
                )
              ],
            ),
          ),
        ),
        (isExpand2)
            ? Column(
                children: [
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nyala',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: (option2) ? true : false,
                              onChanged: null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mati',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: (option2) ? false : true,
                              onChanged: null,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }

  Future<void> getDataScenario() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      motionSensor = prefs.getBool('motionSensor') ?? false;
      lightBulb = prefs.getBool('lightBulb') ?? false;
      temperatureSensor = prefs.getBool('temperatureSensor') ?? false;
      fan = prefs.getBool('fan') ?? false;
    });
  }
}
