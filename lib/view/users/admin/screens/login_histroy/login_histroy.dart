import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/login_histroy_controller/login_histroy_controller.dart';
import 'package:vidyaveechi_website/model/loginHistory_model/login_history_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/login_histroy/login_histroy_datalist.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/category_tableHeader.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';
import 'package:vidyaveechi_website/view/widgets/loading_widget/loading_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

import '../../../../drop_down/login_history/select_date.dart';
import '../../../../drop_down/login_history/select_month.dart';

class LoginHistroyContainer extends StatelessWidget {
  final AdminLoginHistroyController adminLoginHistroyController =
      Get.put(AdminLoginHistroyController());

  LoginHistroyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: ResponsiveWebSite.isMobile(context)
            ? Axis.horizontal
            : Axis.vertical,
        child: Container(
          color: screenContainerbackgroundColor,
          height: 650,
          width: ResponsiveWebSite.isDesktop(context) ? double.infinity : 1200,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: TextFontWidget(
                      text: 'Login List',
                      fontsize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 05),
                        child:
                            RouteSelectedTextContainer(title: 'Login Histroy'),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 250,
                          height: 70,
                          //  color: cWhite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextFontWidget(
                                  text: 'Month *', fontsize: 12.5),
                              const SizedBox(
                                height: 05,
                              ),
                              SizedBox(
                                height: 40,
                                child: SelectLoginMonthDropDown(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          height: 70,
                          // color: cWhite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextFontWidget(
                                  text: 'Date *', fontsize: 12.5),
                              const SizedBox(
                                height: 05,
                              ),
                              SizedBox(
                                  height: 40,
                                  child: adminLoginHistroyController
                                              .selectedMonth.value ==
                                          true
                                      ? SelectLoginDateDropDown()
                                      : const Row(
                                          children: [
                                            Text('Please select the month  '),
                                            CircularProgressIndicator(),
                                          ],
                                        )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    color: cWhite,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Container(
                        color: cWhite,
                        height: 40,
                        child: const Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'No')),
                            SizedBox(
                              width: 01,
                            ),
                            Expanded(
                                flex: 4,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Name')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 4,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'E mail')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 3,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Login Time')),
                            SizedBox(
                              width: 02,
                            ),
                            Expanded(
                                flex: 3,
                                child: CatrgoryTableHeaderWidget(
                                    headerTitle: 'Logout Time')),
                            SizedBox(
                              width: 02,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width:  ResponsiveWebSite.isDesktop(context) ? double.infinity:1200,
                      decoration: BoxDecoration(
                        color: cWhite,
                        border: Border.all(color: cWhite),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: SizedBox(
                          // width: 1100,
                          child: StreamBuilder(
                            stream: server
                                .collection('SchoolListCollection')
                                .doc(UserCredentialsController.schoolId)
                                .collection(UserCredentialsController.batchId!)
                                .doc(UserCredentialsController.batchId)
                                .collection('LoginHistory')
                                .doc(Get.find<AdminLoginHistroyController>()
                                    .loginHMonthValue
                                    .value)
                                .collection(
                                    Get.find<AdminLoginHistroyController>()
                                        .loginHMonthValue.value)
                                .doc(Get.find<AdminLoginHistroyController>()
                                    .loginHDayValue .value)
                                .collection(
                                    Get.find<AdminLoginHistroyController>()
                                        .loginHDayValue .value)
                                .orderBy('loginTime', descending: true)
                                .snapshots(),
                            builder: (context, snaPS) {
                              if (snaPS.hasData) {
                                return snaPS.data!.docs.isEmpty
                                    ? const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              "Please select the month and date",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      )
                                    : ListView.separated(
                                        itemBuilder: (context, index) {
                                          final data =
                                              AdminLoginDetailHistoryModel
                                                  .fromMap(snaPS
                                                      .data!.docs[index]
                                                      .data());
                                          return GestureDetector(
                                            onTap: () {},
                                            child: AllLoginLogoutDataList(
                                              index: index,
                                              data: data,
                                            ),
                                          ); ///////
                                        },
                                        separatorBuilder: (context, index) {
                                          return const SizedBox(
                                            height: 02,
                                          );
                                        },
                                        itemCount:
                                            //  100);
                                            snaPS.data!.docs.length);
                                //           //////////
                              } else if (snaPS.data == null) {
                                return const LoadingWidget();
                              } else {
                                return const LoadingWidget();
                              }
                            },
                          ), ////////
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
