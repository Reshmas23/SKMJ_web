import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/controller/user_login_Controller/user_login_controller.dart';
import 'package:vidyaveechi_website/info/info.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';


class UserLoginPageScreen extends StatefulWidget {
  const UserLoginPageScreen({super.key});

  @override
  State<UserLoginPageScreen> createState() => _UserLoginPageScreenState();
}

class _UserLoginPageScreenState extends State<UserLoginPageScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<FabCircularMenuPlusState> fabKey = GlobalKey();
  final UserLoginController loginController = Get.put(UserLoginController());
  bool isChecked = false;
  // final AdminLoginScreenController adminLoginScreenController =
  //     Get.put(AdminLoginScreenController());
  // final ClassTeacherLoginController classTeacherLoginController =
  //     Get.put(ClassTeacherLoginController());

  final Color istColor = Colors.black.withOpacity(0.8);
  late AnimationController animationctr;
  late Animation colorAnimation;
  bool istapped = false;

  @override
  void initState() {
    animationctr = AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..addListener(() {
        setState(() {});
      });
    colorAnimation = Tween(begin: 0.4, end: 1)
        .animate(CurvedAnimation(parent: animationctr, curve: Curves.fastOutSlowIn));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: istapped == false
            ? null
            : Builder(
                builder: (context) => FabCircularMenuPlus(
                  fabChild: Container(
                    decoration: const BoxDecoration(color: themeColorBlue, shape: BoxShape.circle),
                    child: const Center(
                        child: Image(
                            image: AssetImage('webassets/flact_png/icons8-fingerprint-100.png'))),
                    // decoration: ,
                  ),
                  key: fabKey,
                  // Cannot be `Alignment.center`
                  alignment: Alignment.bottomRight,
                  ringColor: cWhite.withOpacity(0.4),
                  ringDiameter: ResponsiveWebSite.isMobile(context) ? 580 : 1000.0,
                  ringWidth: ResponsiveWebSite.isMobile(context) ? 200 : 300.0,
                  fabSize: ResponsiveWebSite.isMobile(context) ? 30 : 64.0,
                  fabElevation: ResponsiveWebSite.isMobile(context) ? 8.0 : 8.0,
                  fabIconBorder: const CircleBorder(),

                  fabColor: Colors.white,
                  fabOpenIcon: const Icon(Icons.menu, color: themeColorBlue),
                  fabCloseIcon: const Icon(Icons.close, color: themeColorBlue),
                  fabMargin: ResponsiveWebSite.isMobile(context)
                      ? const EdgeInsets.all(30)
                      : const EdgeInsets.all(16.0),
                  animationDuration: const Duration(milliseconds: 800),
                  animationCurve: Curves.easeInOutCirc,
                  onDisplayChange: (isOpen) {
                    // _showSnackBar(
                    //     context, "The menu is ${isOpen ? "open" : "closed"}");
                  },
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                  // loginController.askUserDetailsBottomSheet(context);
                      loginController.askUserDetailsBottomSheet(context);
                     //   Get.offAll(() => const StudentHomeScreen());
                      },
                      child: SizedBox(
                        height: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        width: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        child: Column(
                          children: [
                            Container(
                              height: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              width: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "webassets/flact_png/icons8-student-100.png",
                                scale: 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "STUDENT",
                              fontsize: ResponsiveWebSite.isMobile(context)
                                  ? 10
                                  : ResponsiveWebSite.isMobile(context)
                                      ? 10
                                      : 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {loginController.askUserDetailsParentBottomSheet(context);
                       // Get.offAll(() => const ParentHomeScreen());
                      },
                      child: SizedBox(
                        height: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        width: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        child: Column(
                          children: [
                            Container(
                              height: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              width: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "webassets/flact_png/icons8-parent-100.png",
                                scale: ResponsiveWebSite.isMobile(context) ? 0.9 : 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "PARENT",
                              fontsize: ResponsiveWebSite.isMobile(context) ? 10 : 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                       loginController.askUserDetailsTeacherBottomSheet(context);
                      // loginController.teacherLoginController();
                      // Get.offAll(() => const TeachersHomeScreen());
                      },
                      child: SizedBox(
                        height: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        width: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        child: Column(
                          children: [
                            Container(
                              height: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              width: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "webassets/flact_png/icons8-teacher-100.png",
                                scale: 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "TEACHER",
                              fontsize: ResponsiveWebSite.isMobile(context) ? 10 : 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        loginController.adminLoginController(context);
                      },
                      child: SizedBox(
                        height: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        width: ResponsiveWebSite.isMobile(context) ? 100 : 200,
                        child: Column(
                          children: [
                            Container(
                              height: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              width: ResponsiveWebSite.isMobile(context) ? 50 : 100,
                              decoration: BoxDecoration(
                                  color: cWhite,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: themeColorBlue)),
                              child: Image.asset(
                                "webassets/flact_png/icons8-admin-100.png",
                                scale: 1.5,
                              ),
                            ),
                            GooglePoppinsWidgets(
                              text: "ADMIN",
                              fontsize: ResponsiveWebSite.isMobile(context) ? 10 : 12,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        body: Container(
          height: ResponsiveWebSite.isMobile(context) ? 800 : 1000,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("webassets/images/login-bg.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Obx(() {
            if (loginController.loginontapped.value == true) {
              return loginController.lodingContainer.value == true
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, bottom: 0, right: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Expanded(
                            //   child: GlassMorphism(
                            //     start: 0.6,
                            //     end: 0.1,
                            Container(
                              height: 500,
                              width: 400,
                              decoration: const BoxDecoration(
                                color: cWhite,
                                // borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 45,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: ResponsiveWebSite.isMobile(context) ? 20 : 40,
                                          width: ResponsiveWebSite.isMobile(context) ? 20 : 40,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(logoImage),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Text(simple,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: cgreen.withOpacity(1),
                                              fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: SizedBox(
                                      height: 70,
                                      child: TextFormFiledContainerLoginWidget(
                                          icon: const Icon(
                                            Icons.email,
                                            size: 15,
                                          ),
                                          controller: loginController.userEmailIDController,
                                          hintText: 'Enter your email',
                                          title: "Email",
                                          width: 300),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: SizedBox(
                                      height: 64,
                                      child: TextFormFiledContainerLoginWidget(
                                          icon: const Icon(
                                            Icons.lock,
                                            size: 15,
                                          ),
                                          controller: loginController.userPasswordController,
                                          hintText: 'Enter your password',
                                          title: "Password",
                                          width: 300),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Checkbox(
                                              value: isChecked,
                                              onChanged: (bool? value) {
                                                // This is where we update the state when the checkbox is tapped
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
                                            ),
                                            Text(
                                              "Remember Me",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 11,
                                                color: cBlack.withOpacity(1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Forgot your password ?",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11,
                                            color: cred.withOpacity(1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GestureDetector(
                                      onTap: () async {
                                        istapped = true;
                                        animationctr.forward().then((value) async {
                                          if (fabKey.currentState?.isOpen ?? false) {
                                            fabKey.currentState?.close();
                                          } else {
                                            fabKey.currentState?.open();
                                            Future.delayed(const Duration(seconds: 3))
                                                .then((value) async {
                                              loginController.lodingContainer.value = true;
                                            });
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 300,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(255, 14, 40, 97),
                                          // borderRadius:
                                          // BorderRadius.circular(12)
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                "Don't have an account? SignUp now!",
                                style: TextStyle(color: cWhite),
                              ),
                            ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      // color: Colors.black.withOpacity(colorAnimation.value),
                      );
            } else {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, bottom: 0, right: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        width: 400,
                        decoration: const BoxDecoration(
                          color: cWhite,
                          // borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 45,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: ResponsiveWebSite.isMobile(context) ? 20 : 40,
                                    width: ResponsiveWebSite.isMobile(context) ? 20 : 40,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(logoImage),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text(simple ,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: cgreen.withOpacity(1),
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 45),
                            //   child: Text(
                            //     "Welcome Back",
                            //     style: TextStyle(
                            //         fontWeight: FontWeight.bold,
                            //         color: istColor,
                            //         fontSize: 25),
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SizedBox(
                                height: 70,
                                child: TextFormFiledContainerLoginWidget(
                                    icon: const Icon(
                                      Icons.email,
                                      size: 15,
                                    ),
                                    controller: loginController.userEmailIDController,
                                    hintText: 'Enter your email',
                                    title: "Email",
                                    width: 300),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                height: 64,
                                child: TextFormFiledContainerLoginWidget(
                                    icon: const Icon(
                                      Icons.lock,
                                      size: 15,
                                    ),
                                    controller: loginController.userPasswordController,
                                    hintText: 'Enter your password',
                                    title: "Password",
                                    width: 300),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30, bottom: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          // This is where we update the state when the checkbox is tapped
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Remember Me",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 11,
                                          color: cBlack.withOpacity(1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Forgot your password ?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: cred.withOpacity(1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.only(left: 180, bottom: 30,top: 30),
                            //   child: Text(
                            //     "Forgot your password ?",
                            //     style: TextStyle(
                            //       fontWeight: FontWeight.w300,
                            //       fontSize: 11,
                            //       color: cred.withOpacity(1),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  loginController.loginontapped.value = true;
                                  istapped = true;
                                  animationctr.forward().then((value) async {
                                    if (fabKey.currentState?.isOpen ?? false) {
                                      fabKey.currentState?.close();
                                    } else {
                                      fabKey.currentState?.open();
                                      Future.delayed(const Duration(seconds: 2))
                                          .then((value) async {
                                        loginController.lodingContainer.value = true;
                                      });
                                    }
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 14, 40, 97),
                                    // borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Don't have an account? SignUp now!",
                          style: TextStyle(color: cWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
        ));
  }
}
// ignore_for_file: file_names, must_be_immutable

class TextFormFiledContainerLoginWidget extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final double width;
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  String? Function(String?)? validator;
  Function()? onTap;
  Icon? icon;

  TextInputType? keyboardType;
  TextFormFiledContainerLoginWidget({
    required this.hintText,
    required this.title,
    required this.width,
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GooglePoppinsWidgets(
            text: title,
            fontsize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 35,
            width: width,
            child: TextFormField(
              style: GoogleFonts.poppins(fontSize: 12),
              onChanged: onChanged,
              autofillHints: autofillHints,
              onTap: onTap,
              validator: validator,
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                errorBorder: const OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.none,
                  color: Colors.red,
                )),
                focusedErrorBorder: const OutlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                    style: BorderStyle.none,
                    color: Colors.red,
                  ),
                ),
                contentPadding: const EdgeInsets.all(8.0),
                enabledBorder: const OutlineInputBorder(borderSide: BorderSide(width: 0.4)),
                hintStyle: const TextStyle(fontSize: 13),
                hintText: hintText,
                suffixIcon: icon,
                focusedBorder: const OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.blue),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
