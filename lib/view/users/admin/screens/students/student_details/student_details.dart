import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/student_controller/student_controller.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/ioT_Card/code.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/attendence_history_status/attendence_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/exam_history_status/exam_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/detail_tileContainer.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class StudentDetailsContainer extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());
  StudentDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final data = studentController.studentModelData.value;

    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        scrollDirection: ResponsiveWebSite.isMobile(context)
            ? Axis.horizontal
            : Axis.vertical,
        child: Container(
          color: screenContainerbackgroundColor,
          height: 1000,
          width: ResponsiveWebSite.isDesktop(context) ? double.infinity : 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: TextFontWidget(
                  text: 'Student Details',
                  fontsize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Container(
                  color: cWhite,
                  height: 260,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        color: Colors.white10,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Column(
                            children: [
                              Get.find<ClassController>()
                                          .ontapStudentsDetail
                                          .value ==
                                      true
                                  ? Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 08,
                                              right: 05,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.find<ClassController>()
                                                    .ontapStudentsDetail
                                                    .value = false;
                                                Get.find<ClassController>()
                                                    .ontapClassStudents
                                                    .value = false;
                                                studentController
                                                    .ontapStudent.value = false;
                                              },
                                              child:
                                                  const RouteNonSelectedTextContainer(
                                                      title: 'Home'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 08,
                                              right: 05,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.find<ClassController>()
                                                    .ontapStudentsDetail
                                                    .value = false;
                                              },
                                              child:
                                                  const RouteNonSelectedTextContainer(
                                                      title: 'Back'),
                                            ),
                                          ),
                                          const RouteSelectedTextContainer(
                                              width: 140,
                                              title: 'Student Details'),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 08,
                                              right: 05,
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.find<ClassController>()
                                                    .ontapStudentsDetail
                                                    .value = false;
                                                Get.find<ClassController>()
                                                    .ontapClassStudents
                                                    .value = false;
                                                studentController
                                                    .ontapStudent.value = false;
                                              },
                                              child:
                                                  const RouteNonSelectedTextContainer(
                                                      title: 'Home'),
                                            ),
                                          ),
                                          const RouteSelectedTextContainer(
                                              width: 140,
                                              title: 'Student Details'),
                                        ],
                                      ),
                                    )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.blue,
                        height: 02,
                      ),
                      Expanded(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 05, left: 10),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                    radius: 78,
                                    backgroundImage: AssetImage(
                                        'webassets/png/student.png')),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100,
                                      color: Colors.blue.withOpacity(0.1),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: TextFontWidget(
                                              text: data!.studentName,
                                              fontsize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, left: 10),
                                            child: SizedBox(
                                              width: 500,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Gender',
                                                    subtitle: data.gender,
                                                  ),
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Date of Birth',
                                                    subtitle: data.dateofBirth,
                                                  ),
                                                  // const StudentDetailTileContainer(
                                                  //   flex: 1,
                                                  //   title: 'Batch Year',
                                                  //   subtitle: 'March 2023',
                                                  // ),
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Admission No',
                                                    subtitle:
                                                        data.admissionNumber,
                                                  ),
                                                  StreamBuilder(
                                                      stream: server
                                                          .collection('SchoolListCollection')
                                                          .doc( UserCredentialsController.schoolId)
                                                          .collection('classes')
                                                          .doc(data.classId)
                                                          .snapshots(),
                                                      builder: (context, snap) {
                                                        if (snap.hasData) {
                                                          return StudentDetailTileContainer(
                                                              flex: 1,
                                                              title:
                                                                  'Class Name',
                                                              subtitle:
                                                                  '${snap.data?['className'] ?? ""}'
                                                              // stringTimeToDateConvert(
                                                              //     data.createDate),
                                                              );
                                                        } else {
                                                          return const Text("Not Found");
                                                        }
                                                      }),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    // flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(Icons.call),
                                              TextFontWidget(
                                                text:
                                                    " +91 ${data.parentPhoneNumber} ",
                                                fontsize: 12,
                                                color: Colors.blue,
                                              ),
                                              const SizedBox(
                                                width: 60,
                                              ),
                                              GestureDetector(
                                                  onTap: () => Get.find<
                                                              StudentController>()
                                                          .enableorDisableUpdate(
                                                        data.docid,
                                                        true,
                                                      ),
                                                  child: CircleAvatar(
                                                      child: Icon(
                                                    Icons.edit_square,
                                                    size: 21,
                                                    color:
                                                        cBlack.withOpacity(0.3),
                                                  ))),
                                              // Container(
                                              //   height: 30,
                                              //   width: 30,
                                              //   decoration:  BoxDecoration(
                                              //     color: cgreen.withOpacity(0.3),
                                              //     borderRadius: const BorderRadius.all(Radius.circular(5))),
                                              //     child: const Icon(Icons.edit,size: 16,),)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.email),
                                              TextFontWidget(
                                                text: data.studentemail,
                                                fontsize: 12,
                                                color: Colors.blue,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      color: cWhite,
                      height: 40,
                      child: const TabBar(
                        indicatorColor: cWhite,
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        labelColor: Colors.blue,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                        tabs: [
                          // Tab(
                          //   text: 'FEES',
                          // ),
                          Tab(
                            text: 'ATTENDANCE',
                          ),
                          Tab(
                            text: 'EXAM ',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  height: 02,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  height: 600,
                  color: cWhite,
                  // color: Colors.amber,

                  // height: 300,
                  child: TabBarView(children: [
                    // PerStudentFeesHistory(), //........................ Student FEES
                    PerStudentAttendenceHistory(), //.......................... Student Attendence
                    PerStudentExamHistory() //............................ Student Exam History
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
