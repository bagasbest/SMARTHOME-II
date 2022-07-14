import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Scenario1AddScreen extends StatefulWidget {
  const Scenario1AddScreen({Key? key}) : super(key: key);

  @override
  State<Scenario1AddScreen> createState() => _Scenario1AddScreenState();
}

class _Scenario1AddScreenState extends State<Scenario1AddScreen> {
  bool isExpandMotionSensor = false;
  bool isCheckedMove = false;
  bool isCheckedStay = false;

  bool isExpandBulb = false;
  bool isCheckedOn = false;
  bool isCheckedOff = false;

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
                  'Add Scene 1',
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

              /// kondisi 1
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
                            if (isExpandMotionSensor) {
                              isExpandMotionSensor = false;
                            } else {
                              isExpandMotionSensor = true;
                            }
                          });
                        },
                        icon: (isExpandMotionSensor)
                            ? Icon(Icons.keyboard_arrow_down)
                            : Icon(Icons.keyboard_arrow_up),
                      )
                    ],
                  ),
                ),
              ),
              (isExpandMotionSensor)
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
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Gerak',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: isCheckedMove,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedStay = !value!;
                                  isCheckedMove = value;
                                });
                              },
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
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tidak',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              value: isCheckedStay,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedStay = value!;
                                  isCheckedMove = !value;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  : Container(),

              /// Melaksanakan Tugas 1
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
                        'Lampu',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (isExpandBulb) {
                              isExpandBulb = false;
                            } else {
                              isExpandBulb = true;
                            }
                          });
                        },
                        icon: (isExpandBulb)
                            ? Icon(Icons.keyboard_arrow_down)
                            : Icon(Icons.keyboard_arrow_up),
                      )
                    ],
                  ),
                ),
              ),
              (isExpandBulb)
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
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
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
                              value: isCheckedOn,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedOff = !value!;
                                  isCheckedOn = value;
                                });
                              },
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
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
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
                              value: isCheckedOff,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedOff = value!;
                                  isCheckedOn = !value;
                                });
                              },
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
                height: 30,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue),
                child: InkWell(
                  onTap: () async {
                    if(isCheckedMove == isCheckedStay) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Motion Sensor!"),
                      ));
                    } else if(isCheckedOn == isCheckedOff) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Lampu!"),
                      ));
                    } else {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool('motionSensor', isCheckedMove);
                      prefs.setBool('lightBulb', isCheckedOn);

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Berhasil menyimpan skenario 1, silahkan lihat homepage untuk melihat list skenario!"),
                      ));
                    }
                  },
                  child: Center(
                    child: Text(
                      'Simpan Perubahan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
