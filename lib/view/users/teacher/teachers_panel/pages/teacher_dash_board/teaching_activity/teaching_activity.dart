import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/widgets/responsive.dart';

import 'teachers_activity_graph.dart';

class TeachingActivity extends StatelessWidget {
  const TeachingActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:ResponsiveWebSite.isMobile(context)?350:300,
 
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(10, 0, 0, 0),
          offset: Offset(
            0.5,
            0.5,
          ),
          blurRadius: 1.0,
          spreadRadius: 1.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ], borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
       
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              "Progress Bar",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
                width: 350,
                height:ResponsiveWebSite.isMobile(context)? 290:ResponsiveWebSite.isDesktop(context)?150:150,
                color: Colors.white,
                child: const TeacherActivityGraph()),
          ),
         
         
        ],
      ),
    );
  }
}
