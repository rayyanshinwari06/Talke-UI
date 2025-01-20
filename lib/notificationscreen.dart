import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List imagess = [
    Icons.alarm,
    Icons.alarm,
    Icons.confirmation_num_outlined,
    Icons.confirmation_num_outlined,
    Icons.alarm,
    Icons.alarm,
    Icons.alarm,
    Icons.confirmation_num_outlined,
    Icons.alarm,
    Icons.confirmation_num_outlined,
    // Icons.confirmation_num_outlined,
  ];

  List title = [
    '',
    'Class Alarm',
    'Class Confirmed',
    '',
    'Class Confirmed',
    'Class Alarm',
    'Class Alarm',
    '',
    'Class Confirmed',
    'Class Alarm',
    'Class Confirmed'
  ];

  List preview = [
    '',
    'Your class will be start after 15 minutes\nstay with app and take care',
    'Class confirmed Adam Smith call will\nbe held at 11:00 AM',
    ''
        'Class confirmed Adam Smith call will\nbe held at 11:00 AM',
    'Your class will be start after 15 minutes\nstay with app and take care',
    'Your class will be start after 15 minutes\nstay with app and take care',
    '',
    'Class confirmed Adam Smith call will \nb eheld at 11:00 AM',
    'Your class will be start after 15 minutes\nstay with app and take care',
    'Class confirmed Adam Smith call will\nbe held at 11:00 AM',
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
  // List videocalls = [
  //   '',
  //   'Video call - ',
  //   'Video call - ',
  //   'Video call - ',
  //   'Video call - ',
  //   'Video call - ',
  //   '',
  //   'Video call - ',
  //   'Video call - ',
  //   'Video call - ',
  // ];
  // List voicecalls = [
  //   '',
  //   'Voice call - ',
  //   'Voice call - ',
  //   'Voice call - ',
  //   'Voice call - ',
  //   'Voice call - ',
  //   '',
  //   'Voice call - ',
  //   'Voice call - ',
  //   'Voice call - ',
  // ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Notification',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 90.sp),
                  )
                ],
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
                    } else if (index == 3) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Yesterday, Jan 11 2025',
                          style: TextStyle(
                              fontSize: 50.sp, fontWeight: FontWeight.w600),
                        ),
                      );
                    } else if (index == 6) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Friday, Jan 10 2025',
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 300.h,
                                      width: 300.w,
                                      child: Icon(
                                        imagess[index],
                                        size: 70,
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
                                            title[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 60.sp),
                                          ),
                                          // Row(
                                          // children: [
                                          // Text(
                                          //   videocalls[index],
                                          //   style: TextStyle(
                                          //       fontWeight: FontWeight.bold,
                                          //       fontSize: 35.sp),
                                          // ),
                                          // Text(
                                          //   'Completed',
                                          //   style: TextStyle(
                                          //       color: Colors.green,
                                          //       fontSize: 35.sp),
                                          // )
                                          // ],
                                          // ),
                                          Text(
                                            preview[index],
                                            style: TextStyle(
                                                fontSize: 35.sp,
                                                fontWeight: FontWeight.w600),
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
    );
  }
}
