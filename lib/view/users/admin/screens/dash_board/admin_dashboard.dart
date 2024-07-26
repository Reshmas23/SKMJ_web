import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/card_controller/card_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/sections/attendence/total_students_attendence.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/sections/class_status/allclass_view.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/sections/exam_status/exam_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/dash_board/sections/teacher_status/teacher_status.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

import 'sections/total_members/total_members_section.dart';

class AdminDashBoardSections extends StatelessWidget {
  final CardController cardCntrl = Get.put(CardController());
  AdminDashBoardSections({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: server.collection('Attendance').doc(UserCredentialsController.schoolId).snapshots(),
        builder: (context, cardSnaps) {
          if (cardSnaps.hasData) {
            if (cardSnaps.data?.data()?['CardID'] == '') {
            } else {
              cardCntrl.streamCard();
            }

            return Container(
              height: 1000,
              color: screenContainerbackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 25),
                        child: TextFontWidget(
                          text: 'Admin Dashboard',
                          fontsize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 25,
                            left:
                                ResponsiveWebSite.isMobile(context) ? 05 : 10),
                        child: TotalMembersSection(),

                        ///.............. Total Members Section
                      ),
                      ResponsiveWebSite.isMobile(context)
                          ? const SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: TotalStudentAttendanceContainer(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child:
                                        TotalClassViewContainer(), /////////........ Others --- Attendance
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, right: 0, left: 0),
                                    child: TotalTeacherViewContainer(),
                                  ),
                                ],
                              ),
                            )
                          : const SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, right: 0, left: 10),
                                      child: TotalStudentAttendanceContainer(),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, right: 0, left: 05),
                                      child:
                                          TotalClassViewContainer(), /////////........ Others --- Attendance
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, right: 10, left: 10),
                                      child: TotalTeacherViewContainer(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: ExamStatusContainer(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
