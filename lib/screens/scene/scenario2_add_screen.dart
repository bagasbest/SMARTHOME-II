import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Scenario2AddScreen extends StatefulWidget {
  const Scenario2AddScreen({Key? key}) : super(key: key);

  @override
  State<Scenario2AddScreen> createState() => _Scenario2AddScreenState();
}

class _Scenario2AddScreenState extends State<Scenario2AddScreen> {
  bool isExpandTemperature = false;
  bool isChecked24Degree = false;
  bool isChecked26Degree = false;

  bool isExpandFan = false;
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
                  'Add Scene 2',
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
                            if (isExpandTemperature) {
                              isExpandTemperature = false;
                            } else {
                              isExpandTemperature = true;
                            }
                          });
                        },
                        icon: (isExpandTemperature)
                            ? Icon(Icons.keyboard_arrow_down)
                            : Icon(Icons.keyboard_arrow_up),
                      )
                    ],
                  ),
                ),
              ),
              (isExpandTemperature)
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
                              value: isChecked24Degree,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked26Degree = !value!;
                                  isChecked24Degree = value;
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
                              value: isChecked26Degree,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked26Degree = value!;
                                  isChecked24Degree = !value;
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
                    if(isChecked24Degree == isChecked26Degree) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Sensor Suhu!"),
                      ));
                    } else if(isCheckedOn == isCheckedOff) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Maaf, Anda belum memilih Konfogurasi Kipas!"),
                      ));
                    } else {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool('temperatureSensor', isCheckedOn);
                      prefs.setBool('fan', isChecked26Degree);

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Berhasil menyimpan skenario 2, silahkan lihat homepage untuk melihat list skenario!"),
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
