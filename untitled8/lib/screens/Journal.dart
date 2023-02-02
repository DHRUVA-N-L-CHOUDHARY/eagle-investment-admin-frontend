import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import 'dashboard_screen.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  String? date = DateFormat('d MMM').format(DateTime.now());
  String? date2 = DateFormat('d MMM').format(DateTime.now());
  String? date3 = DateFormat('d MMM').format(DateTime.now());
  String? date4 = DateFormat('d MMM').format(DateTime.now());
  String? year = DateFormat('yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff001922),
      drawer: Drawer(
        backgroundColor: Color(0Xff012c32),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: MediaQuery.of(context).size.height * 0.97,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 110,
                        child: DrawerHeader(
                            decoration: BoxDecoration(
                              color: Color(0xff04636b),
                            ),
                            child: Row(
                              children: const [
                                Text(
                                  "Quick Access",
                                  style: TextStyle(
                                      color: Color(0XffFFFFFF), fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.bookmark_add_outlined,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Journal',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.mail_outlined,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Chat',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wifi,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Go Live',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.calendar_month,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Call Shedule',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wifi_calling_3_outlined,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Call',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.notifications_active_outlined,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Notification',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.dashboard_outlined,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Dashboard',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DashBord()));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Color(0Xff6464aF),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Color(0XffFFFFFF),
                        ),
                        title: const Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XffFFFFFF),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Color(0Xff002633),
                leading: Builder(builder: (context) {
                  return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(Icons.menu));
                }),
                title: Text(
                  "Journal",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0XffFFFFFF)),
                ),
                actions: [
                  GestureDetector(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.notifications_active),
                  ))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Student Performance",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Weekly Analytics",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 30,
                      margin: EdgeInsets.all(5),
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0Xff0ababb),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          disabledForegroundColor:
                              Colors.transparent.withOpacity(0.38),
                          disabledBackgroundColor:
                              Colors.transparent.withOpacity(0.12),
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GeneretOtp()));
                        },
                        child: Center(
                          child: Text(
                            'Show',
                            style: TextStyle(
                                fontSize: 10,
                                color: const Color(0xffffffff),
                                fontFamily: 'poppins_medium',
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Enter Student Code',
                    hintStyle:
                        TextStyle(color: Color(0Xff57686e), fontSize: 13),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0Xff0ababb), width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(color: Color(0Xff0ababb)),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Trading Activities",
                        style: TextStyle(color: Color(0XffFFFFFF)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 100,
                  decoration: BoxDecoration(color: Color(0Xff0ababb)),
                  child: SfSparkLineChart(
                    color: Color(0Xff51d5d8),
                    //Enable the trackball
                    trackball: SparkChartTrackball(
                        activationMode: SparkChartActivationMode.tap),
                    //Enable marker
                    marker: SparkChartMarker(
                        displayMode: SparkChartMarkerDisplayMode.none),
                    //Enable data label
                    labelDisplayMode: SparkChartLabelDisplayMode.none,
                    data: const <double>[
                      1,
                      5,
                      6,
                      0,
                      1,
                      2,
                      7,
                      7,
                      4,
                      10,
                      13,
                      6,
                      7,
                      5,
                      11,
                      5,
                      3
                    ],
                  )),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: DataTable(
                        columns: [
                          const DataColumn(
                            label: Text('Date'),
                          ),
                          DataColumn(
                            label: GestureDetector(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate:
                                          DateTime(int.parse(year.toString())),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime.now());

                                  if (pickedDate != null) {
                                    print(
                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                        DateFormat('d MMM').format(pickedDate);
                                    print(
                                        formattedDate); //formatted date output using intl package =>  2021-03-16
                                    setState(() {
                                      date =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {}
                                },
                                child: Text(date.toString())),
                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('Script')),
                            DataCell(Text(' ')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Time in')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Time out')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xfff6795a)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('type')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Reson for trade')),
                            DataCell(Text(
                              ' ',
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Qutity')),
                            DataCell(Text(' ')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Entry')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Target')),
                            DataCell(Text(' ')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Stoplose')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xfff6795a)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Exit')),
                            DataCell(Text(' ')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Result')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Profit/loss')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Amount')),
                            DataCell(Text(
                              ' ',
                              style: TextStyle(color: Color(0Xff6092f7)),
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Follow my rules')),
                            DataCell(Text(' ')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Remarks')),
                            DataCell(Text(' ')),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0Xff0bc3c1),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0Xff0bc3c1),
                    disabledForegroundColor:
                        Colors.transparent.withOpacity(0.38),
                    disabledBackgroundColor:
                        Colors.transparent.withOpacity(0.12),
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DashBord()));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
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
