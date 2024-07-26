import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/therapy_controller/therapy_controller.dart';
import 'package:vidyaveechi_website/model/therapy_model/therapy_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/ioT_Card/code.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/therapy_management/therapy_add_students.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/therapy_management/therapy_create.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/therapy_management/therapy_data_list.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/therapy_management/therapy_management.dart';
import 'package:vidyaveechi_website/view/users/super_admin/widgets/buttonContainer.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class TherapyHomePage extends StatelessWidget {
  final TherapyController therapyController = Get.put(TherapyController());

  TherapyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => therapyController.therapyhome.value == false
        ? const TherapyManagement()
        : SingleChildScrollView(
            scrollDirection: ResponsiveWebSite.isMobile(context) ? Axis.horizontal : Axis.vertical,
            child: Container(
              color: screenContainerbackgroundColor,
              height: 650,
              width: ResponsiveWebSite.isDesktop(context) ? double.infinity : 1200,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Therapy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        const RouteSelectedTextContainer(width: 180, title: 'Therapy List'),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            createTherapyAdmin(context);
                          },
                          child: ButtonContainerWidget(
                              curving: 30,
                              colorindex: 0,
                              height: 40,
                              width: 180,
                              child: const Center(
                                child: TextFontWidgetRouter(
                                  text: 'Create Therapy',
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: cWhite,
                                ),
                              )),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: () {
                            addTherapyStd(context);
                          },
                          child: ButtonContainerWidget(
                              curving: 30,
                              colorindex: 0,
                              height: 40,
                              width: 180,
                              child: const Center(
                                child: TextFontWidgetRouter(
                                  text: 'Add Students',
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: cWhite,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: cWhite,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        color: cWhite,
                        height: 40,
                        child: const Row(
                          children: [
                            Expanded(flex: 1, child: CatrgoryTableHeaderWidget(headerTitle: 'No')),
                            SizedBox(width: 1),
                            Expanded(
                                flex: 1,
                                child:
                                    CatrgoryTableHeaderWidget(headerTitle: "Types of therapies")),
                            SizedBox(width: 1),
                            Expanded(
                                flex: 3,
                                child: CatrgoryTableHeaderWidget(headerTitle: "Description")),
                            SizedBox(width: 1),
                            Expanded(
                                flex: 2,
                                child: CatrgoryTableHeaderWidget(headerTitle: "Therapist")),
                            SizedBox(width: 1),
                            Expanded(
                                flex: 2, child: CatrgoryTableHeaderWidget(headerTitle: "Duration")),
                            SizedBox(width: 1),
                            Expanded(
                                flex: 2,
                                child: CatrgoryTableHeaderWidget(headerTitle: "Total students")),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: ResponsiveWebSite.isDesktop(context) ? double.infinity : 1200,
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: cWhite,
                        border: Border.all(color: cWhite),
                      ),
                      child: StreamBuilder(
                        stream: server
                            .collection('SchoolListCollection')
                            .doc(UserCredentialsController.schoolId)
                            .collection(UserCredentialsController.batchId!)
                            .doc(UserCredentialsController.batchId!)
                            .collection('Therapy')
                            .snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return const Center(child: Text('Error loading data'));
                          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                            return const Center(child: Text('No therapies available'));
                          } else {
                            return ListView.separated(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                var docData =
                                    snapshot.data!.docs[index].data() as Map<String, dynamic>?;
                                if (docData == null) {
                                  return const Center(child: Text('Error: Null data'));
                                }
                                TherapyModel data = TherapyModel.fromMap(docData);
                                return GestureDetector(
                                  onTap: () {
                                    therapyController.therapyModelData.value = data;
                                    therapyController.therapyhome.value = false;
                                  },
                                  child: AllTherapyDataList(
                                    index: index,
                                    data: data,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => const SizedBox(height: 2),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ));
  }
}
