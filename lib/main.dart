// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:url_launcher/url_launcher_string.dart';

void main() {
  // Step 2
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  ElevatedButton buttons({required String link, required String buttontext}) {
    return ElevatedButton(
        onPressed: () {
          launchUrlString('$link');
        },
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))),
        child: Text(
          '$buttontext',
          style:
              TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
        ));
  }

  GestureDetector icons({required String link, required String image}) {
    return GestureDetector(
      onTap: () {
        launchUrlString('$link');
      },
      child: Image.asset(
        '$image',
        width: 30,
      ),
    );
  }

//
// images/telegrsm.png
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'salsa'),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 56, 229, 114),
                  Color.fromARGB(255, 101, 255, 232)
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          foregroundImage: AssetImage('images/profile-pic.png'),
                        ),
                        Text(
                          '@muhammadshehzadtariq',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mobile Application Developer',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttons(
                            link: "https://github.com/Muhammad-Shehzad-Tariq",
                            buttontext: "Github"),
                        SizedBox(
                          height: 5,
                        ),
                        buttons(
                            link: "https://stackoverflow.com/",
                            buttontext: "Stack Overflow"),
                        SizedBox(
                          height: 5,
                        ),
                        buttons(
                            link: "https://www.fiverr.com/",
                            buttontext: "Catch me on Fiver"),
                        SizedBox(
                          height: 5,
                        ),
                        buttons(
                            link:
                                "https://www.upwork.com/talent-marketplace/?utm_source=PartnerCentric&utm_medium=affiliate&utm_campaign=2532501_Omniads2020&irclickid=0MAR8R1K0xyPU5FQ1-SmuzotUkFWREygq2qFxM0&irgwc=1&",
                            buttontext: "Catch me on upwork"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        icons(
                            link: 'https://web.telegram.org/',
                            image: 'images/telegrsm.png'),
                        icons(
                            link: 'https://mail.google.com/mail/u/0/#inbox',
                            image: 'images/gmail.png'),
                        icons(
                            link:
                                'https://www.facebook.com/campaign/landing.php?campaign_id=1653377901&extra_1=s%7Cc%7C318305677163%7Ce%7Cfacebook%20login%7C&placement=&creative=318305677163&keyword=facebook%20login&partner_id=googlesem&extra_2=campaignid%3D1653377901%26adgroupid%3D65139787642%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-1409285535%26loc_physical_ms%3D9076905%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=CjwKCAjw9-6oBhBaEiwAHv1QvG2rxIF7x6zbAUsXZ2oUncURKnkHn1nKDbdPNETFHSK-4CvR-zap2hoCW7AQAvD_BwE',
                            image: 'images/facebook.png'),
                        icons(
                            link: 'https://www.linkedin.com/feed/',
                            image: 'images/linkedin.png'),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'images/linktree.png',
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
