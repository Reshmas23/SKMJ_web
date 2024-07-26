import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/model/student_model/student_model.dart';

class AllStudentDropDown extends StatelessWidget {
  AllStudentDropDown({
    Key? key,
  }) : super(key: key);

  final classCntrl = Get.put(ClassController());

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DropdownSearch<StudentModel>(
      validator: (item) {
        if (item == null) {
          return "Required field";
        } else {
          return null;
        }
      },
      // autoValidateMode: AutovalidateMode.always,
      asyncItems: (value) {
        classCntrl.allstudentList.clear();

        return classCntrl.fetchAllStudents();
      },
      itemAsString: (value) =>
          'Name : ${value.studentName}  ID NO :  ${value.admissionNumber}',
      onChanged: (value) async {
        if (value != null) {
          classCntrl.studentName.value = value.studentName;
          classCntrl.studentDocID.value = value.docid;
        }
      },
      popupProps: const PopupProps.menu(
          searchFieldProps: TextFieldProps(
              decoration: InputDecoration(
                  hintText: "Search Student", border: OutlineInputBorder())),
          showSearchBox: true,
          searchDelay: Duration(microseconds: 10)),
      dropdownDecoratorProps: DropDownDecoratorProps(
          baseStyle: GoogleFonts.poppins(
              fontSize: 13, color: Colors.black.withOpacity(0.7))),
    ));
  }
}
