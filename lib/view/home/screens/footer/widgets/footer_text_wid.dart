import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vidyaveechi_website/info/info.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/google_poppins_widget.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/privacypolicy.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/terms%20_and_condition.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/widgets/cancellation.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/widgets/trademark.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/widgets/who_we_are.dart';
import 'package:vidyaveechi_website/view/home/screens/footer/widgets/why_choose_us.dart';
import 'package:vidyaveechi_website/view/users/super_admin/lepton_Admin/admin_panel_Screen.dart';
import 'package:vidyaveechi_website/view/widgets/hover-text/hovertext.dart';
import '../family_policy.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 200,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GooglePoppinsWidgets(
            text: 'Address',
            fontsize: 21,
            fontWeight: FontWeight.bold,
            color: cWhite,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GooglePoppinsWidgets(
                      text: address[index],
                      fontsize: 12,
                      fontWeight: FontWeight.w500,
                      color: cWhite,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: address.length),
            ),
          )
        ],
      ),
    );
  }
}

class LegalWidget extends StatelessWidget {
  const LegalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 250,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GooglePoppinsWidgets(
            text: 'Legal',
            fontsize: 21,
            fontWeight: FontWeight.bold,
            color: cWhite,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 1) {
                       Get.toNamed('/PrivacyPolicy');
                        } else if (index == 2) {
                          log("privacy ..................");
                          Get.toNamed('/PrivacyPolicy');
                        } else {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return legalnav[index];
                            },
                          ));
                        }
                      },
                      child: OnHoverText(builder: (isHoverd) {
                        final color = isHoverd
                            ? Colors.amber
                            : cWhite;

                        return GooglePoppinsWidgets(
                          color: color,
                          text: legal[index],
                          fontsize: 12,
                          fontWeight: FontWeight.w500,
                        );
                      }),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: legal.length),
            ),
          )
        ],
      ),
    );
  }
}

class ConnecWidget extends StatelessWidget {
  const ConnecWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 250,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GooglePoppinsWidgets(
            text: 'Connect',
            fontsize: 21,
            fontWeight: FontWeight.bold,
            color: cWhite,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                       connectnav[index]();
                      },
                      child: OnHoverText(builder: (isHoverd) {
                        final color = isHoverd
                            ? Colors.amber
                            : cWhite;
                        return GooglePoppinsWidgets(
                          color: color,
                          text: connect[index],
                          fontsize: 12,
                          fontWeight: FontWeight.w500,
                        );
                      }),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 30,
                    );
                  },
                  itemCount: connect.length),
            ),
          )
        ],
      ),
    );
  }
}

class WhoWeAreWidget extends StatelessWidget {
  const   WhoWeAreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GooglePoppinsWidgets(
            text: name,
            fontsize: 18,
            fontWeight: FontWeight.bold,
            color: cWhite,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return costechdujonav[index];
                          },
                        ));
                      },
                      child: OnHoverText(builder: (isHoverd) {
                        final color = isHoverd
                            ?  Colors.amber
                            : cWhite;
                        return GooglePoppinsWidgets(
                          text: constechDUjo[index],
                          color: color,
                          fontsize: 12,
                          fontWeight: FontWeight.w500,
                        );
                      }),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 30,
                    );
                  },
                  itemCount: constechDUjo.length),
            ),
          )
        ],
      ),
    );
  }
}

List<String> constechDUjo = ['Who We Are', 'Why choose us','SUPER ADMIN'];
List<String> connect = ['Facebook', 'Instagram', 'Youtube'];
List<String> legal = [
  'Terms & Conditions',
  'Family Policy',
  'Privacy Policy',
  'Trademark Policy',
  'Refund and\nCancellation Policy'
];
List<String> address = [
  '📌SKMJ Higher Secondary School(Kalpetta)'
      'Thiruhridaya Nagar, Kairali Nagar,'
      'Kalpetta,Wayanad, Kerala 673122,India',
  '📞 04936 206 010',
  '✉️ skmjhsskalpetta@gmail.com',
  //'✉️ leptoncommunications@gmail.com'
];
var costechdujonav = [
  const WhyChooseUs(),
  const WhoWeAre(),
  LeptonAdminLoginScreen()
];

final Uri _faceBookUrl =
    Uri.parse('https://www.facebook.com/SKMJHSS/');
final Uri _twitterUrl = Uri.parse('');
final Uri _instaUrl = Uri.parse('https://www.instagram.com/skmj.official/');
final Uri _utubeUrl = Uri.parse('https://www.youtube.com/@SKMJHSSKalpetta');


Future<void> _launchFacebookUrl() async {
  if (!await launchUrl(_faceBookUrl)) {
    throw 'Could not launch $_faceBookUrl';
  }
}

// Future<void> _launchTwitterUrl() async {
//   if (!await launchUrl(_twitterUrl)) {
//     throw 'Could not launch $_twitterUrl';
//   }
// }

Future<void> _launchyouTubeUrl() async {
  if (!await launchUrl(_utubeUrl)) {
    throw 'Could not launch $_utubeUrl';
  }
}

Future<void> _launchInstaUrl() async {
  if (!await launchUrl(_instaUrl)) {
    throw 'Could not launch $_instaUrl';
  }
}

var connectnav = [
  _launchFacebookUrl,
  _launchInstaUrl,
 // _launchTwitterUrl(),
  _launchyouTubeUrl,
];
var legalnav = [
  const TermsAndConditions(),
  const FamilyPolicyScreen(),
  const PrivacyPolicy(),
  const TrademarkAndPolicy(),
  const CancellationPolicy(),
];