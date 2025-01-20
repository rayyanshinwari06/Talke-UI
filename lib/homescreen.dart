import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  List calls = [
    '',
    'Video call - ',
    'Voice call - ',
    'Video call - ',
    'Voice call - ',
    'Video call - ',
    '',
    'Voice call - ',
    'Video call - ',
    'Voice call - ',
  ];
  List times = [
    '',
    '12:30 PM',
    '12:00 PM',
    '11:30 AM',
    '11:00 AM',
    '12:30 PM',
    '',
    '12:00 PM',
    '11:30 AM',
    '11:00 AM',
  ];
  List schedule = [
    '',
    'Scheduled',
    'Scheduled',
    'Scheduled',
    'Scheduled',
    'Scheduled',
    '',
    'In Progress',
    'In Progress',
    'In Progress',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'English TalkE',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 70.sp),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Classes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 90.sp),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150.h,
                    width: 450.w,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(49)),
                    child: Center(
                        child: Text(
                      'Upcoming',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 50.sp,
                          color: Colors.white),
                    )),
                  ),
                  Container(
                    height: 150.h,
                    width: 450.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(80.r),
                      border: Border.all(color: Colors.amber, width: 7.w),
                    ),
                    child: Center(
                        child: Text(
                      'Past',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 50.sp,
                          color: Colors.amber),
                    )),
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
                        borderRadius: BorderRadius.circular(80.r),
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
                            'Tomorrow, Jan 13 2024',
                            style: TextStyle(
                                fontSize: 50.sp, fontWeight: FontWeight.w600),
                          ),
                        );
                      } else if (index == 6) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Today, Jan 12 2024',
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
                                                  calls[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 35.sp),
                                                ),
                                                Text(
                                                  schedule[index],
                                                  style: TextStyle(
                                                      color: Colors.blueAccent,
                                                      fontSize: 35.sp),
                                                )
                                              ],
                                            ),
                                            Text(
                                              times[index],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 35.sp),
                                            ),
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
      ),
    );
  }
}
