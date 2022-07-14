import 'package:flutter/material.dart';
import 'package:smarthome/screens/scene/scenario1_add_screen.dart';
import 'package:smarthome/screens/scene/scenario2_add_screen.dart';

class AddNewScene2 extends StatefulWidget {
  const AddNewScene2({Key? key}) : super(key: key);

  @override
  State<AddNewScene2> createState() => _AddNewScene2State();
}

class _AddNewScene2State extends State<AddNewScene2> {
  bool isExpandDegree = false;
  bool isChecked24Celcius = false;
  bool isChecked26Celcius = false;

  bool isExpandFan = false;
  bool isCheckedOn2 = false;
  bool isCheckedOff2 = false;

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
                  'Add New Scene',
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Scenario1AddScreen()),
                  );
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'Add Scene 1',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Scenario2AddScreen()),
                  );
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'Add Scene 2',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
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
