import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled8/screens/video_call_screen.dart';

import 'Journal.dart';

class DashBord extends StatefulWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
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
                              children: [
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Journal()));
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
                          Get.to(() => VideoCallScreen());
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
                          Get.to(() => VideoCallScreen());
                          // Navigator.pop(context);
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Dashboard",
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0XffFFFFFF)))
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("User Data",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0XffFFFFFF))),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("12",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0Xff04636b))),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Guest",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0Xff000000))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("12",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0Xff04636b))),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Studennt",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
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
                        builder: (context) => const Journal()));
                  },
                  child: Center(
                    child: Text(
                      "Journal",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("Manage Communication",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0XffFFFFFF))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0Xff04636b)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              size: 60,
                              color: Color(0XffFFFFFF),
                            ),
                            // Text("12",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         color: Colors.blue)),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Chat",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0Xff04636b)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wifi,
                              size: 60,
                              color: Color(0XffFFFFFF),
                            ),
                            // Text("12",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         color: Colors.blue)),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Go Live",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => VideoCallScreen());
                        },
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0Xff04636b)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 60,
                                color: Color(0XffFFFFFF),
                              ),
                              // Text("12",
                              //     style: TextStyle(
                              //         fontWeight: FontWeight.w400,
                              //         fontSize: 18,
                              //         color: Colors.blue)),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              Text("Schedule",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0Xff04636b)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.volume_up_rounded,
                              size: 60,
                              color: Color(0XffFFFFFF),
                            ),
                            // Text("12",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.w400,
                            //         fontSize: 18,
                            //         color: Colors.blue)),
                            // SizedBox(
                            //   height: 15,
                            // ),
                            Text("Send Notice",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    disabledForegroundColor:
                        Colors.transparent.withOpacity(0.38),
                    disabledBackgroundColor:
                        Colors.transparent.withOpacity(0.12),
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Icon(Icons.wifi_calling_3),
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
