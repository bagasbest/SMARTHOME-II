import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddNewScene2 extends StatefulWidget {
  const AddNewScene2({Key? key}) : super(key: key);

  @override
  State<AddNewScene2> createState() => _AddNewScene2State();
}

class _AddNewScene2State extends State<AddNewScene2> {
  bool isExpandMotionSensor = false;
  bool isCheckedMove = false;
  bool isCheckedStay = false;

  bool isExpandBulb = false;
  bool isCheckedOn = false;
  bool isCheckedOff = false;

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

              /// skenario 1
              Text(
                'Skenario 1',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
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

              /// skenario 2
              SizedBox(
                height: 50,
              ),
              Text(
                'Skenario 2',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              /// kondisi 2
              Text(
                'Kondisi 2',
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
                        'Sensor Suhu',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (isExpandDegree) {
                              isExpandDegree = false;
                            } else {
                              isExpandDegree = true;
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
              (isExpandDegree)
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
                                    '24°C',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Checkbox(
                                    checkColor: Colors.white,
                                    value: isChecked24Celcius,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked26Celcius = !value!;
                                        isChecked24Celcius = value;
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
                                    '26°C',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Checkbox(
                                    checkColor: Colors.white,
                                    value: isChecked26Celcius,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked26Celcius = value!;
                                        isChecked24Celcius = !value;
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

              /// Melaksanakan Tugas 2
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
                        'Kipas',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (isExpandFan) {
                              isExpandFan = false;
                            } else {
                              isExpandFan = true;
                            }
                          });
                        },
                        icon: (isExpandFan)
                            ? Icon(Icons.keyboard_arrow_down)
                            : Icon(Icons.keyboard_arrow_up),
                      )
                    ],
                  ),
                ),
              ),
              (isExpandFan)
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
                                    value: isCheckedOn2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isCheckedOff2 = !value!;
                                        isCheckedOn2 = value;
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
                                    value: isCheckedOff2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isCheckedOff2 = value!;
                                        isCheckedOn2 = !value;
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
                    } else if(isChecked24Celcius == isChecked26Celcius) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Sensor Suhu!"),
                      ));
                    } else if(isCheckedOn2 == isCheckedOff2) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Kipas!"),
                      ));
                    } else {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool('motionSensor', isCheckedMove);
                      prefs.setBool('lightBulb', isCheckedOn);
                      prefs.setBool('temperatureSensor', isChecked24Celcius);
                      prefs.setBool('fan', isCheckedOn2);

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Berhasil menyimpan skenario 1 dan 2, silahkan lihat homepage untuk melihat list skenario!"),
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
