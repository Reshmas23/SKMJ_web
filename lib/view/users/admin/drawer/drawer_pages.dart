// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/widgets/dashboard_textFontWidget.dart';

class DrawerSelectedPagesSection extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  DrawerSelectedPagesSection({
    required this.selectedIndex,
    required this.onTap,
    super.key,
  });

  int index = 0;

  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [
        Container(
          color: selectedIndex == 0
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/dashboard.png')),
            onTap: () {
              index = 0;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Dashboard',
                ),
              ],
            ),
          ),
        ), ////////////////////////////////.........................................0
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('webassets/png/attendance.png')),
          title: DashboardTextFontWidget(
            title: 'Registration',
          ),
          children: <Widget>[
            Container(
              color: selectedIndex == 1
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                
                onTap: () {
                  index = 1;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Student Registration',
                ),
              ),
            ), ////////////////////////////////........sub....7
            Container(
              color: selectedIndex == 2
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  index = 2;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Teacher Registration',
                ),
              ),
            ),///////////////////////..........sub........
             Container(
              color: selectedIndex == 3
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  index = 3;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Non Teaching Staff Registration',
                ),
              ),
            ),////////////////////...........sub
          ],
        ), 
        // ListTile(
        //   leading: SizedBox(
        //       height: 25,
        //       width: 25,
        //       child: Image.asset('webassets/png/registation_setting.png')),
        //   tileColor: selectedIndex == 1
        //       ? themeColorBlue.withOpacity(0.1)
        //       : Colors.transparent,
        //   onTap: () {
        //     index = 1;
        //     registrationController.ontapRegiStudentList.value = false;
        //     onTap.call(index);
        //   },
        //   title: DashboardTextFontWidget(
        //     title: 'Registered Student',
        //   ),
        //   trailing: StreamBuilder(
        //       stream: server
        //           .collection('SchoolListCollection')
        //           .doc(UserCredentialsController.schoolId)
        //           .collection(UserCredentialsController.batchId!)
        //           .doc(UserCredentialsController.batchId)
        //           .collection('RegStudentsNotifierCounter')
        //           .doc('count')
        //           .snapshots(),
        //       builder: (context, classSnap) {
        //         if (classSnap.hasData) {
        //           return classSnap.data?.data() == null
        //               ? const SizedBox()
        //               : classSnap.data?.data()?['counter'] == 0
        //                   ? const SizedBox()
        //                   : CircleAvatar(
        //                       radius: 11,
        //                       backgroundColor:
        //                           const Color.fromARGB(255, 37, 211, 102),
        //                       child: Center(
        //                         child: TextFontWidget(
        //                           color: cWhite,
        //                           text: "${classSnap.data?.data()?['counter']}",
        //                           fontsize: 10,
        //                           fontWeight: FontWeight.bold,
        //                         ),
        //                       ),
        //                     );
        //         } else if (classSnap.data == null) {
        //           return const SizedBox();
        //         } else {
        //           return const SizedBox();
        //         }
        //       }),
        // ),
         Container(
          color: selectedIndex == 4
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/student.png')),
            onTap: () {
              index = 4;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'All Students',
                ),
              ],
            ),
          ),
        ), //////////////////////////.............................5
          Container(
          color: selectedIndex == 5
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/teacher_1.png')),
            onTap: () {
              index = 5;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'All Teachers',
                ),
              ],
            ),
          ),
        ),  /////////////////////////////......................
          Container(
          color: selectedIndex == 6
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/parents.png')),
            onTap: () {
              index = 6;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'All Parents',
                ),
              ],
            ),
          ),
        ), //////////////////////////////////////........................

        Container(
          color: selectedIndex == 7
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/blackboard.png')),
            onTap: () {
              index = 7;
              onTap.call(index);
            },
            title: DashboardTextFontWidget(
              title: 'Classes',
            ),
          ),
        ), ///////////////////////////////////////////.........................................5
        const SizedBox(
          height: 10,
        ),
          Container(
          color: selectedIndex == 8
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/fees&bills.png')),
            onTap: () {
              index = 8;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Fees and Bills',
                ),
              ],
            ),
          ),
        ),
        ///////////////////////////////////////6
        const SizedBox(
          height: 10,
        ),
        ExpansionTile(
          leading: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('webassets/png/attendance.png')),
          title: DashboardTextFontWidget(
            title: 'Attendance',
          ),
          children: <Widget>[
            Container(
              color: selectedIndex == 9
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  index = 9;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Students',
                ),
              ),
            ), ////////////////////////////////........sub....7
            Container(
              color: selectedIndex == 10
                  ? themeColorBlue.withOpacity(0.1)
                  : Colors.transparent,
              child: ListTile(
                onTap: () {
                  index = 10;
                  onTap.call(index);
                },
                title: DashboardTextFontWidget(
                  title: 'Teachers',
                ),
              ),
            ), ///////////////////////..........sub........
          ],
        ), ///////////////////////////////////.................................8
         Container(
          color: selectedIndex == 11
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/exam.png')),
            onTap: () {
              index = 11;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Examinations',
                ),
              ],
            ),
          ),
        ), 
        ///////////////////////////////////////////////.....................................
        const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 12
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/notice.png')),
            onTap: () {
              index = 12;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Notices',
                ),
              ],
            ),
          ),
        ), 
        /////////////////////////////////////////////////.......................................
        const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 13
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/banner.png')),
            onTap: () {
              index = 13;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Events',
                ),
              ],
            ),
          ),
        ),
        /////////////////////////////////..................................
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 14
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/meetings.png')),
            onTap: () {
              index = 14;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Meetings',
                ),
              ],
            ),
          ),
        ),
        //////////////////////////////...........................................
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 15
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/notification.png')),
            onTap: () {
              index = 15;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Notifications',
                ),
              ],
            ),
          ),
        ), //////////////////////////////////.......................
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 16
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/createadmin.png')),
            onTap: () {
              index = 16;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Create Admin',
                ),
              ],
            ),
          ),
        ), //////////////////////////////////////.................................
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 17
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/generalinstruction.png')),
            onTap: () {
              index = 17;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'General Instructions',
                ),
              ],
            ),
          ),
        ), ///////////////////////////////////...................
        const SizedBox(
          height: 10,
        ),
        Container(
          color: selectedIndex == 18
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/achive.png')),
            onTap: () {
              index = 18;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Achievements',
                ),
              ],
            ),
          ),
        ), //////////////////////////////////////...........................
        const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 19
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/batchhistory.png')),
            onTap: () {
              index = 19;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Batch History',
                ),
              ],
            ),
          ),
        ), ///////////////////////////////.............................
        const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 20
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/timetable.png')),
            onTap: () {
              index = 20;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'TimeTable',
                ),
              ],
            ),
          ),
        ),  ////////////////////////////////////........................
        const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 21
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/logout.png')),
            onTap: () {
              index = 21;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'Login Histroy',
                ),
              ],
            ),
          ),
        ),  
        // const SizedBox(
        //   height: 10,
        // ),
        
        //  Container(
        //   color: selectedIndex == 22
        //       ? themeColorBlue.withOpacity(0.1)
        //       : Colors.transparent,
        //   child: ListTile(
        //     leading: SizedBox(
        //         height: 20,
        //         width: 20,
        //         child: Image.asset('webassets/png/logout.png')),
        //     onTap: () {
        //       index = 22;
        //       Get.to(()=>const LoginDashBoard());
        //     },
        //     title: Row(
        //       children: [
        //         DashboardTextFontWidget(
        //           title: 'Home Page Settings',
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      
                const SizedBox(
          height: 10,
        ),
         Container(
          color: selectedIndex == 22
              ? themeColorBlue.withOpacity(0.1)
              : Colors.transparent,
          child: ListTile(
            leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset('webassets/png/logout.png')),
            onTap: () {
              index = 22;
              onTap.call(index);
            },
            title: Row(
              children: [
                DashboardTextFontWidget(
                  title: 'TimeTable',
                ),
              ],
            ),
          ),
        ),  

        //  ListTile(
        //   leading: SizedBox(
        //       height: 20,
        //       width: 20,
        //       child: Image.asset('webassets/png/therapy.png')),
        //   tileColor: selectedIndex == 22
        //       ? themeColorBlue.withOpacity(0.1)
        //       : Colors.transparent,
        //   onTap: () {
        //     index = 22;
        //     onTap.call(index);
        //   },
        //   title: DashboardTextFontWidget(
        //     title: 'Therapy Management',
        //   ),
        // ),
      ],
    );
  }
}
