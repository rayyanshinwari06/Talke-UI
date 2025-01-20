import 'package:flutter/material.dart';
import 'package:talkee/bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talkee/editprofile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style:
                        TextStyle(fontSize: 80.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                Container(
                  height: 550.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  bottom: 60.h,
                  right: 60.w,
                  child: Container(
                    height: 120.h,
                    width: 280.w,
                    color: Colors.red[800],
                    child: Center(
                        child: Text(
                      'Withdraw',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Positioned(
                  left: 100.w,
                  bottom: 80.h,
                  child: RichText(
                    text: TextSpan(
                      text: "Your total\n",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.sp,
                      ),
                      children: [
                        TextSpan(
                          text: 'balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60.sp,
                          ),
                        ),
                        TextSpan(
                          text: "\n\$ 6.000",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Set Active',
                    style: TextStyle(fontSize: 60.sp),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('This will show you active to the students so they')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('can call you anytime')],
            ),
            Divider(
              indent: 40.w,
              endIndent: 50.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditprofileScreen()));
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(fontSize: 55.sp),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_calendar_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Set Date and Time',
                          style: TextStyle(fontSize: 55.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(fontSize: 55.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.message_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Messages',
                          style: TextStyle(fontSize: 55.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.contacts_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Contact',
                          style: TextStyle(fontSize: 55.sp),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(fontSize: 55.sp),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 150.h,
                  width: 600.w,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.repeat,
                        color: Colors.white,
                      ),
                      Text(
                        'SWITCH TO STUDENT',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
