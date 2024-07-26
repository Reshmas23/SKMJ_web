import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/model/class_model/class_model.dart';

import '../../../controller/teacher_exam_graph_controller/teacher_exam_graph_controller.dart';


class SelectClassDropDownLogin extends StatelessWidget {
  SelectClassDropDownLogin({Key? key}) : super(key: key);

  final classCtrl = Get.put(ClassController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownSearch<ClassModel>(
        validator: (item) {
          if (item == null) {
            return "Select Class";
          } else {
            return null;
          }
        },
        asyncItems: (value) {
          classCtrl.allclassList.clear();
          return classCtrl.userloginfetchClass();
        },
        itemAsString: (value) => value.className,
        onChanged: (value) async {
          if (value != null) {
            classCtrl.className.value = value.className;
            classCtrl.classDocID.value = value.docid;
           //
           //
              Get.find<TeacherExamStatusController>().fetchClasswiseExamData(); 
            log("message ${classCtrl.classDocID.value}");
          }
        },
        popupProps: const PopupProps.menu(
          searchFieldProps: TextFieldProps(
            decoration: InputDecoration(
              hintText: "Search Class",
              border: OutlineInputBorder(),
            ),
          ),
          showSearchBox: true,
          searchDelay: Duration(microseconds: 10),
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          baseStyle: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}