import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkee/historyscreen.dart';

class Historyscreen2 extends StatefulWidget {
  Historyscreen2({super.key});

  @override
  State<Historyscreen2> createState() => _Historyscreen2State();
}

class _Historyscreen2State extends State<Historyscreen2> {
  List imagess = [
    '',
    'assets/smile_in_pain.png',
    'assets/prof.jpeg',
    'assets/prof1.jpeg',
    'assets/prof2.webp',
    'assets/smile_in_pain.png',
    'assets/prof.jpeg',
    'assets/prof1.jpeg',
    'assets/prof2.webp',
  ];

  List namess = [
    '',
    'Smile in Pain',
    'Person',
    'PERSONN',
    'PROFILE',
    'Smile in Pain',
    '',
    'Person',
    'PERSONN',
    'PROFILE',
  ];

  List times = [
    '',
    'Today 12:30 PM - ',
    'Today 12:00 PM - ',
    'Today 11:30 AM - ',
    'Today 11:00 AM - ',
    'Today 12:30 PM - ',
    '',
    'Yesterday 12:00 PM - ',
    'Yesterday 11:30 AM - ',
    'Yesterday 11:00 AM - ',
  ];

  // List schedule = [
  //   '',
  //   'Scheduled',
  //   'Scheduled',
  //   'Scheduled',
  //   'Scheduled',
  //   'Scheduled',
  //   '',
  //   'In Progress',
  //   'In Progress',
  //   'In Progress',
  // ];
  List videocalls = [
    '',
    'Video call - ',
    'Video call - ',
    'Video call - ',
    'Video call - ',
    'Video call - ',
    '',
    'Video call - ',
    'Video call - ',
    'Video call - ',
  ];
  List voicecalls = [
    '',
    'Voice call - ',
    'Voice call - ',
    'Voice call - ',
    'Voice call - ',
    'Voice call - ',
    '',
    'Voice call - ',
    'Voice call - ',
    'Voice call - ',
  ];
  bool isvideocall = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'History',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 90.sp),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isvideocall = false;
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HistoryScreen()));
                        });
                      },
                      child: Container(
                        height: 150.h,
                        width: 450.w,
                        decoration: BoxDecoration(
                            color: isvideocall ? Colors.white : Colors.amber,
                            border: Border.all(
                                width: 5.r,
                                color:
                                    isvideocall ? Colors.amber : Colors.white),
                            borderRadius: BorderRadius.circular(
                              70.r,
                            )),
                        child: Center(
                            child: Text(
                          'Video Calls',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 50.sp,
                            color: isvideocall ? Colors.amber : Colors.white,
                          ),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isvideocall = true;
                        });
                      },
                      child: Container(
                        height: 150.h,
                        width: 450.w,
                        decoration: BoxDecoration(
                            color: isvideocall ? Colors.amber : Colors.white,
                            border: Border.all(
                                width: 5.r,
                                color:
                                    isvideocall ? Colors.white : Colors.amber),
                            borderRadius: BorderRadius.circular(
                              70.r,
                            )),
                        child: Center(
                            child: Text(
                          'Voice Calls',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 50.sp,
                            color: isvideocall ? Colors.white : Colors.amber,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: imagess.length,
                      // scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 50.sp, fontWeight: FontWeight.w600),
                            ),
                          );
                        } else if (index == 6) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Yesterdat, Jan 11 2025',
                              style: TextStyle(
                                  fontSize: 50.sp, fontWeight: FontWeight.w600),
                            ),
                          );
                        }
                        return Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 300.h,
                                // width: 400.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 300.h,
                                          width: 300.w,
                                          child: Image.asset(
                                            imagess[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                namess[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 60.sp),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    voicecalls[index],
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 35.sp),
                                                  ),
                                                  Text(
                                                    'Completed',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 35.sp),
                                                  )
                                                ],
                                              ),
                                              Text(
                                                times[index],
                                                style: TextStyle(
                                                    fontSize: 35.sp,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}
