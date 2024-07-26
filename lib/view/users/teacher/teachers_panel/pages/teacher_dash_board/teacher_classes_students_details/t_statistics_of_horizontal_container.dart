import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

import 'teacher_classes_students_details.dart';

class TStatisticsOfHorizontalContainer extends StatefulWidget {
  const TStatisticsOfHorizontalContainer({super.key});

  @override
  _TStatisticsOfHorizontalContainerState createState() =>
      _TStatisticsOfHorizontalContainerState();
}

class _TStatisticsOfHorizontalContainerState
    extends State<TStatisticsOfHorizontalContainer> {
  final classCtrl = Get.put(ClassController());
  String? teacherClassName;

  @override
  void initState() {
    super.initState();
    // loadClassName();
  }

  // Future<void> loadClassName() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     teacherClassName = prefs.getString(SharedPreferencesHelper.classNameKey) ?? 'No access';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('SchoolListCollection')
              .doc(UserCredentialsController.schoolId)
              .collection('classes')
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return TeacherClassesStudentsDetails(
                categorytext: 'Total Classes',
                totalcount: " ${snapshot.data?.docs.length}",
                imagepath: "webassets/png/roll-call.png",
              );
            } else {
              return const Text('No data found');
            }
          },
        ),
        const SizedBox(
          width: 10,
        ),
        // TeacherClassesStudentsDetails(
        //   categorytext: 'Selected Class',
        //   totalcount: teacherClassName ?? 'No access',
        //   imagepath: "webassets/png/graduating-student.png",
        // ),
          // SizedBox(
          // height: 150,
          // width: 300,
          // child: Column(
          //   children: [
          //      SelectClassDropDownClassTeacher(),
          //     const SizedBox(height: 10),
          //     Text(
          //       teacherClassName ?? 'No access',
          //       style: const TextStyle(
          //         fontSize: 16,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ],
          // ),
       // ),
          // SizedBox(height: 50,width: 300,
          //   child: SelectClassDropDownLogin()),

        const SizedBox(
          width: 10,
        ),
        const TeacherClassesStudentsDetails(
          categorytext: 'Selected class',
          totalcount: "",
          imagepath: "webassets/png/graduating-student.png",
        ),
      ],
    );
  }
}
