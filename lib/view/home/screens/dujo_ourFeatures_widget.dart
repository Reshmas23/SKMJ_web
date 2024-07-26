import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/widgets/hover-text/hovertext.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/widget_container.dart';

class DujoOurFeaturesContainerWidgets extends StatelessWidget {
  final String title;
  final String image;
  final String bodytext;
  final Color color;
  const DujoOurFeaturesContainerWidgets({
    required this.bodytext,
    required this.image,
    required this.title,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnHoverText(builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color.withOpacity(0.1)),
        ),
        height: 400,
        width: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              height: 45,
              width: 45,
            ),
            GooglePoppinsWidgets(
              text: title,
              fontsize: 15,
              // color: Col,
              fontWeight: FontWeight.bold,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GooglePoppinsWidgets(text: bodytext, fontsize: 10.9),
            ),
          ],
        ),
      );
    });
  }
}

class DujoWebFeatures extends StatelessWidget {
  const DujoWebFeatures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWebSite.isDesktop(context)
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  child: GooglePoppinsWidgets(
                    text: "Users Roles",
                    fontsize: 26,
                    color: Colors.lightBlue[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WidgetContainerOnHome(
                        body:
                            "++ administrators have comprehensive control over the entire school community. They can monitor academic records, achievements, fee management, hostel management, library management, and school bus tracking. The app helps in efficient and economic management of the institution",
                        imagePath: 'webassets/images/admin_png.png',
                        title: 'Admin Login'),
                    WidgetContainerOnHome(
                        body:
                            "Parents have a dedicated login that enables them to monitor their child's academic progress, attendance, homework assignments, and safety through features like GPS and RFID-enabled ID cards",
                        imagePath: 'webassets/images/parent_png.png',
                        title: 'Parent Login'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WidgetContainerOnHome(
                        body:
                            "Teachers can utilize the app to manage live and recorded classes, assign homework, track student attendance, and communicate with students and parents. Class teachers can monitor their respective classes closely",
                        imagePath: 'webassets/images/teacher_png.png',
                        title: ' Teacher Login'),
                    WidgetContainerOnHome(
                        body:
                            "Students can access a personalized dashboard that allows them to efficiently manage their academic activities, view study materials, attend live classes, access recorded classes, and interact with the app's resources",
                        imagePath: 'webassets/images/student_png.png',
                        title: 'Student Login'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WidgetContainerOnHome(
                        body:
                            "Class teachers can view and manage the details of the classes they are responsible for. This includes information about the students in their class, such as names, contact details, and attendance records",
                        imagePath: 'webassets/images/classteacher_png.png',
                        title: 'Class teacher Login'),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: GooglePoppinsWidgets(
                  text: "Our Features",
                  fontsize: 26,
                  color: Colors.lightBlue[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 1700,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(),
                          child: DujoOurFeaturesContainerWidgets(
                              color: Colors.blue,
                              bodytext:
                                  'AI-supported chat bot in this school app serves as an intelligent and versatile assistant, improving communication, providing information, and offering support to students, parents, teachers, and staff. It is an intelligent virtual assistant designed to support students and teachers in clearing their doubt instantly',
                              image: 'webassets/png/ai.png',
                              title: 'AI - SUPPORTED CHATBOT'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: DujoOurFeaturesContainerWidgets(
                              color: Colors.red,
                              bodytext:
                                  'Live class feature this school app provides a virtual classroom environment where teachers and students can interact in real time, enabling remote and flexible learning options. It enhances engagement, communication, and collaboration in the educational process while offering tools to assess and monitor student progress',
                              image: 'webassets/png/online-learning.png',
                              title: 'Live Class'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: DujoOurFeaturesContainerWidgets(
                              color: Colors.green,
                              bodytext:
                                  'Recorded class feature in a school app empowers both educators and students by providing a flexible and accessible way to review and revisit class materials. It enhances the learning experience, supports remote or asynchronous learning, and ensures that educational content remains available beyond the live class session',
                              image: 'webassets/png/video-call.png',
                              title: 'Recorded Class'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: DujoOurFeaturesContainerWidgets(
                              color: Color.fromARGB(255, 255, 230, 0),
                              bodytext:
                                  '''Attendance management ensures systematic and digital process of tracking and managing the attendance of students, teachers, and staff within the school. This feature streamlines the traditionally manual task of recording attendance and offers several benefits, including accuracy, efficiency, and real-time data accessibility The core function of attendance management is to record the presence or absence of individuals, typically students and staff, during scheduled classes, events, or working hours. Students' absence will be notified on parents and guardians' mobile through push notifications''',
                              image: 'webassets/png/roll-call.png',
                              title: 'Attendance'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.purple,
                                bodytext:
                                    '''Involves the systematic evaluation and interpretation of various data and metrics related to students, teachers, and the overall educational environment. This analysis provides insights into academic achievement, behavior, and other critical aspects of the educational process The app collects and analyzes students' grades and test scores over time, helping educators and parents monitor their academic progress.It identifies strengths and weaknesses in specific subjects, allowing for targeted interventions or additional support. It may provide insights into the effectiveness of instructional strategies and curriculum alignment''',
                                image: 'webassets/png/monitoring.png',
                                title: 'Performance analysis'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.deepOrange,
                                bodytext:
                                    'Hostel management is an essential component of a school app, particularly for educational institutions that provide boarding facilities for students. This streamlines administrative tasks related to managing accommodations, making it more efficient for staff and administrators. It simplifies processes such as room allocation, fee collection, and check-in/check-out procedures. The app helps maintain accurate and up-to-date records of students residing in the hostel. This includes personal information, emergency contacts, medical records, and attendance records',
                                image: 'webassets/png/bunk-bed.png',
                                title: 'Hostel Management'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Color.fromARGB(255, 255, 230, 0),
                                bodytext:
                                    ''' Digital forms or templates that students, parents, or guardians can use to formally request a leave of absence from school. These digital leave applications offer several advantages over traditional paper-based methods, including convenience, efficiency, and the ability to track and process leave requests electronically. School administrators and relevant staff members receive notifications or alerts about the leave application in the app's administrative dashboard or email.School authorities review the leave application and may request additional information or documentation if necessary''',
                                image: 'webassets/png/email.png',
                                title: 'Leave letter applications'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.blue,
                                bodytext:
                                    '''homework assignment feature in a school app is designed to facilitate the creation, distribution, and tracking of homework assignments for students. Parents or guardians can also access their child's homework assignments through the app, keeping them informed about their child's academic responsibilities. The app  allows students to submit their homework electronically through various means, such as text input, file uploads, or links to cloud-based documents.
The app sends automated reminders to students about upcoming homework due dates.Teachers can also send reminders or clarifications regarding assignments through the app''',
                                image: 'webassets/png/3d-house.png',
                                title: 'Home Works'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.black,
                                bodytext:
                                    '''Class test module in a school app streamlines the process of creating, administering, grading, and analyzing class tests or quizzes. It enhances the teaching and learning experience by providing immediate feedback, performance analytics, and secure access to assessment materials. This digital tool contributes to effective education management and helps students track their progress.Students and teachers can review the test after completion to see the questions, correct answers, and explanations for incorrect answers.Parents may have access to view their child's test results and performance analytics through the app''',
                                image: 'webassets/png/exam_studenttest.png',
                                title: 'Class Tests'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.teal,
                                bodytext:
                                    'SOS ID cards with RFID (Radio-Frequency Identification) and GPS tracking, along with a panic button feature in a school app, are advanced safety and security measures designed to protect students, staff, and other members of the school community. These comprehensive ID cards combine technology and emergency response features to ensure a rapid and effective response during critical situations',
                                image: 'webassets/png/digital-identity.png',
                                title: 'SOS ID CARDS'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Color.fromARGB(255, 255, 230, 0),
                                bodytext:
                                    ''' School bus tracking enables parents, school administrators, and transportation staff to monitor the real-time location and status of school buses used to transport students to and from school. This functionality enhances safety, efficiency, and communication in school transportation systems Each school bus is equipped with a GPS (Global Positioning System) device or tracker.The GPS device constantly updates the bus's location and transmits this data to the school's server or cloud-based platform.Authorized users, including parents, school administrators, and transportation staff, can access the school bus tracking feature within the school app.''',
                                image: 'webassets/png/tracking-app.png',
                                title: 'School Bus Tracking'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.grey,
                                bodytext:
                                    '''Digital resources and educational content that students can access through the app to support their learning and academic progress. These materials are typically designed to align with the curriculum and these materials encompass various content types and multimedia elements, offering students a comprehensive and interactive learning experience.
This app provide digital versions of textbooks and e-books, which students can read and reference on their electronic devices. These digital textbooks often replicate the content of traditional print textbooks, including chapters, illustrations, and exercises.''',
                                image: 'webassets/png/pdf.png',
                                title: 'Study Materials and Textbooks'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25, right: 10),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.lightGreenAccent,
                                bodytext:
                                    '''Exam notifications provide students with timely reminders of upcoming assessments, ensuring that they are well-prepared and aware of important dates.Knowing when exams will take place reduces students' anxiety and stress levels, as they can plan their study schedules effectively.Parents can stay informed about their child's exam schedule through notifications, enabling them to offer support and encouragement''',
                                image: 'webassets/png/exam.png',
                                title: 'Exam Notifications'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 10, right: 10),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.blue,
                                bodytext:
                                    '''This feature that facilitates real-time text-based conversations among students, teachers, parents, and school staff within the app's secure environment. It serves as a means of enhancing communication and collaboration within the school communit The chat feature provides a user-friendly interface with chat bubbles, contact lists, and message threads, making it easy for users to navigate and communicate.Different users may have different levels of access and permissions within the chat system.Users can engage in one-on-one private conversations or create group chats for specific purposes, such as project collaboration or class discussions''',
                                image: 'webassets/png/chat.png',
                                title: 'Chat'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, right: 10),
                            child: DujoOurFeaturesContainerWidgets(
                                color: Colors.indigo,
                                bodytext:
                                    'Notices and events in a school app play a crucial role in communication, ensuring that all members of the school community are well-informed about important updates and upcoming activities. These features enhance transparency, engagement, and organization within the school environment.The school app allows authorized users, such as administrators and teachers, to create and post announcements. These announcements can cover a wide range of topics, including school news, policy updates, and important reminders.Users typically receive push notifications on their devices whenever a new notice is posted. This ensures that users stay up-to-date with the latest information without actively checking the app',
                                image: 'webassets/png/notice.png',
                                title: 'Notices and events'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        //>>>>>>>>>>>>>>>>>>>>> Mobile View
        : ResponsiveWebSite.isMobile(context)
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 60,
                      child: GooglePoppinsWidgets(
                        text: "Users Roles",
                        fontsize: 26,
                        color: Colors.lightBlue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: WidgetContainerOnHome(
                        body:
                            "School administrators have comprehensive control over the entire school community. They can monitor academic records, achievements, fee management, hostel management, library management, and school bus tracking. The app helps in efficient and economic management of the institution",
                        imagePath: 'webassets/images/admin_png.png',
                        title: 'Admin Login'),
                  ),
                  const WidgetContainerOnHome(
                      body:
                          "Parents have a dedicated login that enables them to monitor their child's academic progress, attendance, homework assignments, and safety through features like GPS and RFID-enabled ID cards",
                      imagePath: 'webassets/images/parent_png.png',
                      title: 'Parent Login'),
                  const WidgetContainerOnHome(
                      body:
                          "Teachers can utilize the app to manage live and recorded classes, assign homework, track student attendance, and communicate with students and parents. Class teachers can monitor their respective classes closely",
                      imagePath: 'webassets/images/teacher_png.png',
                      title: ' Teacher Login'),
                  const WidgetContainerOnHome(
                      body:
                          "Students can access a personalized dashboard that allows them to efficiently manage their academic activities, view study materials, attend live classes, access recorded classes, and interact with the app's resources",
                      imagePath: 'webassets/images/student_png.png',
                      title: 'Student Login'),
                  const WidgetContainerOnHome(
                      body:
                          "Class teachers can view and manage the details of the classes they are responsible for. This includes information about the students in their class, such as names, contact details, and attendance records",
                      imagePath: 'webassets/images/classteacher_png.png',
                      title: 'Class teacher Login'),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: GooglePoppinsWidgets(
                          text: "Our Features",
                          fontsize: 26,
                          color: cred,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                'AI-supported chat bot in this school app serves as an intelligent and versatile assistant, improving communication, providing information, and offering support to students, parents, teachers, and staff. It is an intelligent virtual assistant designed to support students and teachers in clearing their doubt instantly',
                            image: 'webassets/png/ai.png',
                            title: 'AI - SUPPORTED CHATBOT'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.red,
                            bodytext:
                                'Live class feature this school app provides a virtual classroom environment where teachers and students can interact in real time, enabling remote and flexible learning options. It enhances engagement, communication, and collaboration in the educational process while offering tools to assess and monitor student progress',
                            image: 'webassets/png/online-learning.png',
                            title: 'Live Class'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.green,
                            bodytext:
                                'Recorded class feature in a school app empowers both educators and students by providing a flexible and accessible way to review and revisit class materials. It enhances the learning experience, supports remote or asynchronous learning, and ensures that educational content remains available beyond the live class session',
                            image: 'webassets/png/video-call.png',
                            title: 'Recorded Class'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                '''Attendance management ensures systematic and digital process of tracking and managing the attendance of students, teachers, and staff within the school. This feature streamlines the traditionally manual task of recording attendance and offers several benefits, including accuracy, efficiency, and real-time data accessibility The core function of attendance management is to record the presence or absence of individuals, typically students and staff, during scheduled classes, events, or working hours. Students' absence will be notified on parents and guardians' mobile through push notifications''',
                            image: 'webassets/png/roll-call.png',
                            title: 'Attendance'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                '''This feature that facilitates real-time text-based conversations among students, teachers, parents, and school staff within the app's secure environment. It serves as a means of enhancing communication and collaboration within the school communit The chat feature provides a user-friendly interface with chat bubbles, contact lists, and message threads, making it easy for users to navigate and communicate.Different users may have different levels of access and permissions within the chat system.Users can engage in one-on-one private conversations or create group chats for specific purposes, such as project collaboration or class discussions''',
                            image: 'webassets/png/chat.png',
                            title: 'Chat'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.indigo,
                            bodytext:
                                'Notices and events in a school app play a crucial role in communication, ensuring that all members of the school community are well-informed about important updates and upcoming activities. These features enhance transparency, engagement, and organization within the school environment.The school app allows authorized users, such as administrators and teachers, to create and post announcements. These announcements can cover a wide range of topics, including school news, policy updates, and important reminders.Users typically receive push notifications on their devices whenever a new notice is posted. This ensures that users stay up-to-date with the latest information without actively checking the app',
                            image: 'webassets/png/notice.png',
                            title: 'Notices and events'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.purple,
                            bodytext:
                                '''Involves the systematic evaluation and interpretation of various data and metrics related to students, teachers, and the overall educational environment. This analysis provides insights into academic achievement, behavior, and other critical aspects of the educational process The app collects and analyzes students' grades and test scores over time, helping educators and parents monitor their academic progress.It identifies strengths and weaknesses in specific subjects, allowing for targeted interventions or additional support. It may provide insights into the effectiveness of instructional strategies and curriculum alignment''',
                            image: 'webassets/png/monitoring.png',
                            title: 'Performance analysis'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.deepOrange,
                            bodytext:
                                'Hostel management is an essential component of a school app, particularly for educational institutions that provide boarding facilities for students. This streamlines administrative tasks related to managing accommodations, making it more efficient for staff and administrators. It simplifies processes such as room allocation, fee collection, and check-in/check-out procedures. The app helps maintain accurate and up-to-date records of students residing in the hostel. This includes personal information, emergency contacts, medical records, and attendance records',
                            image: 'webassets/png/bunk-bed.png',
                            title: 'Hostel Management'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                ''' Digital forms or templates that students, parents, or guardians can use to formally request a leave of absence from school. These digital leave applications offer several advantages over traditional paper-based methods, including convenience, efficiency, and the ability to track and process leave requests electronically. School administrators and relevant staff members receive notifications or alerts about the leave application in the app's administrative dashboard or email.School authorities review the leave application and may request additional information or documentation if necessary''',
                            image: 'webassets/png/email.png',
                            title: 'Leave letter applications'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                '''homework assignment feature in a school app is designed to facilitate the creation, distribution, and tracking of homework assignments for students. Parents or guardians can also access their child's homework assignments through the app, keeping them informed about their child's academic responsibilities. The app  allows students to submit their homework electronically through various means, such as text input, file uploads, or links to cloud-based documents.
                      The app sends automated reminders to students about upcoming homework due dates.Teachers can also send reminders or clarifications regarding assignments through the app''',
                            image: 'webassets/png/3d-house.png',
                            title: 'Home Works'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.lightGreenAccent,
                            bodytext:
                                '''Exam notifications provide students with timely reminders of upcoming assessments, ensuring that they are well-prepared and aware of important dates.Knowing when exams will take place reduces students' anxiety and stress levels, as they can plan their study schedules effectively.Parents can stay informed about their child's exam schedule through notifications, enabling them to offer support and encouragement''',
                            image: 'webassets/png/exam.png',
                            title: 'Exam Notifications'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.black,
                            bodytext:
                                '''Class test module in a school app streamlines the process of creating, administering, grading, and analyzing class tests or quizzes. It enhances the teaching and learning experience by providing immediate feedback, performance analytics, and secure access to assessment materials. This digital tool contributes to effective education management and helps students track their progress.Students and teachers can review the test after completion to see the questions, correct answers, and explanations for incorrect answers.Parents may have access to view their child's test results and performance analytics through the app''',
                            image: 'webassets/png/exam_studenttest.png',
                            title: 'Class Tests'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.teal,
                            bodytext:
                                'SOS ID cards with RFID (Radio-Frequency Identification) and GPS tracking, along with a panic button feature in a school app, are advanced safety and security measures designed to protect students, staff, and other members of the school community. These comprehensive ID cards combine technology and emergency response features to ensure a rapid and effective response during critical situations',
                            image: 'webassets/png/digital-identity.png',
                            title: 'SOS ID CARDS'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                ''' School bus tracking enables parents, school administrators, and transportation staff to monitor the real-time location and status of school buses used to transport students to and from school. This functionality enhances safety, efficiency, and communication in school transportation systems Each school bus is equipped with a GPS (Global Positioning System) device or tracker.The GPS device constantly updates the bus's location and transmits this data to the school's server or cloud-based platform.Authorized users, including parents, school administrators, and transportation staff, can access the school bus tracking feature within the school app.''',
                            image: 'webassets/png/tracking-app.png',
                            title: 'School Bus Tracking'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: DujoOurFeaturesContainerWidgets(
                            color: Colors.grey,
                            bodytext:
                                '''Digital resources and educational content that students can access through the app to support their learning and academic progress. These materials are typically designed to align with the curriculum and these materials encompass various content types and multimedia elements, offering students a comprehensive and interactive learning experience.
                      This app provide digital versions of textbooks and e-books, which students can read and reference on their electronic devices. These digital textbooks often replicate the content of traditional print textbooks, including chapters, illustrations, and exercises.''',
                            image: 'webassets/png/pdf.png',
                            title: 'Study Materials and Textbooks'),
                      ),
                    ],
                  )
                ],
              )
            //>>>>>>>>>>>>>>>>>>> Tab view

            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 60,
                      child: GooglePoppinsWidgets(
                        text: "Users Roles",
                        fontsize: 26,
                        color: Colors.lightBlue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WidgetContainerOnHome(
                            body:
                                "School administrators have comprehensive control over the entire school community. They can monitor academic records, achievements, fee management, hostel management, library management, and school bus tracking. The app helps in efficient and economic management of the institution",
                            imagePath: 'webassets/images/admin_png.png',
                            title: 'Admin Login'),
                        WidgetContainerOnHome(
                            body:
                                "Parents have a dedicated login that enables them to monitor their child's academic progress, attendance, homework assignments, and safety through features like GPS and RFID-enabled ID cards",
                            imagePath: 'webassets/images/parent_png.png',
                            title: 'Parent Login'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WidgetContainerOnHome(
                            body:
                                "Teachers can utilize the app to manage live and recorded classes, assign homework, track student attendance, and communicate with students and parents. Class teachers can monitor their respective classes closely",
                            imagePath: 'webassets/images/teacher_png.png',
                            title: ' Teacher Login'),
                        WidgetContainerOnHome(
                            body:
                                "Students can access a personalized dashboard that allows them to efficiently manage their academic activities, view study materials, attend live classes, access recorded classes, and interact with the app's resources",
                            imagePath: 'webassets/images/student_png.png',
                            title: 'Student Login'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WidgetContainerOnHome(
                            body:
                                "Class teachers can view and manage the details of the classes they are responsible for. This includes information about the students in their class, such as names, contact details, and attendance records",
                            imagePath: 'webassets/images/classteacher_png.png',
                            title: 'Class teacher Login'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: GooglePoppinsWidgets(
                      text: "Our Features",
                      fontsize: 26,
                      color: cred,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                'AI-supported chat bot in this school app serves as an intelligent and versatile assistant, improving communication, providing information, and offering support to students, parents, teachers, and staff. It is an intelligent virtual assistant designed to support students and teachers in clearing their doubt instantly',
                            image: 'webassets/png/ai.png',
                            title: 'AI - SUPPORTED CHATBOT'),
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.red,
                            bodytext:
                                'Live class feature this school app provides a virtual classroom environment where teachers and students can interact in real time, enabling remote and flexible learning options. It enhances engagement, communication, and collaboration in the educational process while offering tools to assess and monitor student progress',
                            image: 'webassets/png/online-learning.png',
                            title: 'Live Class'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.green,
                            bodytext:
                                'Recorded class feature in a school app empowers both educators and students by providing a flexible and accessible way to review and revisit class materials. It enhances the learning experience, supports remote or asynchronous learning, and ensures that educational content remains available beyond the live class session',
                            image: 'webassets/png/video-call.png',
                            title: 'Recorded Class'),
                        DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                '''Attendance management ensures systematic and digital process of tracking and managing the attendance of students, teachers, and staff within the school. This feature streamlines the traditionally manual task of recording attendance and offers several benefits, including accuracy, efficiency, and real-time data accessibility The core function of attendance management is to record the presence or absence of individuals, typically students and staff, during scheduled classes, events, or working hours. Students' absence will be notified on parents and guardians' mobile through push notifications''',
                            image: 'webassets/png/roll-call.png',
                            title: 'Attendance'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                '''This feature that facilitates real-time text-based conversations among students, teachers, parents, and school staff within the app's secure environment. It serves as a means of enhancing communication and collaboration within the school communit The chat feature provides a user-friendly interface with chat bubbles, contact lists, and message threads, making it easy for users to navigate and communicate.Different users may have different levels of access and permissions within the chat system.Users can engage in one-on-one private conversations or create group chats for specific purposes, such as project collaboration or class discussions''',
                            image: 'webassets/png/chat.png',
                            title: 'Chat'),
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.indigo,
                            bodytext:
                                'Notices and events in a school app play a crucial role in communication, ensuring that all members of the school community are well-informed about important updates and upcoming activities. These features enhance transparency, engagement, and organization within the school environment.The school app allows authorized users, such as administrators and teachers, to create and post announcements. These announcements can cover a wide range of topics, including school news, policy updates, and important reminders.Users typically receive push notifications on their devices whenever a new notice is posted. This ensures that users stay up-to-date with the latest information without actively checking the app',
                            image: 'webassets/png/notice.png',
                            title: 'Notices and events'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.purple,
                            bodytext:
                                '''Involves the systematic evaluation and interpretation of various data and metrics related to students, teachers, and the overall educational environment. This analysis provides insights into academic achievement, behavior, and other critical aspects of the educational process The app collects and analyzes students' grades and test scores over time, helping educators and parents monitor their academic progress.It identifies strengths and weaknesses in specific subjects, allowing for targeted interventions or additional support. It may provide insights into the effectiveness of instructional strategies and curriculum alignment''',
                            image: 'webassets/png/monitoring.png',
                            title: 'Performance analysis'),
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.deepOrange,
                            bodytext:
                                'Hostel management is an essential component of a school app, particularly for educational institutions that provide boarding facilities for students. This streamlines administrative tasks related to managing accommodations, making it more efficient for staff and administrators. It simplifies processes such as room allocation, fee collection, and check-in/check-out procedures. The app helps maintain accurate and up-to-date records of students residing in the hostel. This includes personal information, emergency contacts, medical records, and attendance records',
                            image: 'webassets/png/bunk-bed.png',
                            title: 'Hostel Management'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                ''' Digital forms or templates that students, parents, or guardians can use to formally request a leave of absence from school. These digital leave applications offer several advantages over traditional paper-based methods, including convenience, efficiency, and the ability to track and process leave requests electronically. School administrators and relevant staff members receive notifications or alerts about the leave application in the app's administrative dashboard or email.School authorities review the leave application and may request additional information or documentation if necessary''',
                            image: 'webassets/png/email.png',
                            title: 'Leave letter applications'),
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.blue,
                            bodytext:
                                '''homework assignment feature in a school app is designed to facilitate the creation, distribution, and tracking of homework assignments for students. Parents or guardians can also access their child's homework assignments through the app, keeping them informed about their child's academic responsibilities. The app  allows students to submit their homework electronically through various means, such as text input, file uploads, or links to cloud-based documents.
                  The app sends automated reminders to students about upcoming homework due dates.Teachers can also send reminders or clarifications regarding assignments through the app''',
                            image: 'webassets/png/3d-house.png',
                            title: 'Home Works'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.lightGreenAccent,
                            bodytext:
                                '''Exam notifications provide students with timely reminders of upcoming assessments, ensuring that they are well-prepared and aware of important dates.Knowing when exams will take place reduces students' anxiety and stress levels, as they can plan their study schedules effectively.Parents can stay informed about their child's exam schedule through notifications, enabling them to offer support and encouragement''',
                            image: 'webassets/png/exam.png',
                            title: 'Exam Notifications'),
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.black,
                            bodytext:
                                '''Class test module in a school app streamlines the process of creating, administering, grading, and analyzing class tests or quizzes. It enhances the teaching and learning experience by providing immediate feedback, performance analytics, and secure access to assessment materials. This digital tool contributes to effective education management and helps students track their progress.Students and teachers can review the test after completion to see the questions, correct answers, and explanations for incorrect answers.Parents may have access to view their child's test results and performance analytics through the app''',
                            image: 'webassets/png/exam_studenttest.png',
                            title: 'Class Tests'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.teal,
                            bodytext:
                                'SOS ID cards with RFID (Radio-Frequency Identification) and GPS tracking, along with a panic button feature in a school app, are advanced safety and security measures designed to protect students, staff, and other members of the school community. These comprehensive ID cards combine technology and emergency response features to ensure a rapid and effective response during critical situations',
                            image: 'webassets/png/digital-identity.png',
                            title: 'SOS ID CARDS'),
                        DujoOurFeaturesContainerWidgets(
                            color: Color.fromARGB(255, 255, 230, 0),
                            bodytext:
                                ''' School bus tracking enables parents, school administrators, and transportation staff to monitor the real-time location and status of school buses used to transport students to and from school. This functionality enhances safety, efficiency, and communication in school transportation systems Each school bus is equipped with a GPS (Global Positioning System) device or tracker.The GPS device constantly updates the bus's location and transmits this data to the school's server or cloud-based platform.Authorized users, including parents, school administrators, and transportation staff, can access the school bus tracking feature within the school app.''',
                            image: 'webassets/png/tracking-app.png',
                            title: 'School Bus Tracking'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DujoOurFeaturesContainerWidgets(
                            color: Colors.grey,
                            bodytext:
                                '''Digital resources and educational content that students can access through the app to support their learning and academic progress. These materials are typically designed to align with the curriculum and these materials encompass various content types and multimedia elements, offering students a comprehensive and interactive learning experience.
                  This app provide digital versions of textbooks and e-books, which students can read and reference on their electronic devices. These digital textbooks often replicate the content of traditional print textbooks, including chapters, illustrations, and exercises.''',
                            image: 'webassets/png/pdf.png',
                            title: 'Study Materials and Textbooks'),
                      ],
                    ),
                  ),
                ],
              );
  }
}
