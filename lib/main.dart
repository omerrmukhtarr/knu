import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:knu/about.dart';
import 'package:knu/aboutt.dart';
import 'package:knu/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:knu/login.dart';
import 'package:knu/wiki.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const KNU());
}

class KNU extends StatelessWidget {
  const KNU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'KNU', home: Knowledge());
  }
}

class Knowledge extends StatefulWidget {
  const Knowledge({super.key});

  @override
  State<Knowledge> createState() => _KnowlegdeState();
}

class _KnowlegdeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   title: const Text(
          //     'KNU',
          //     style: TextStyle(
          //         fontSize: 50, color: Color.fromARGB(255, 166, 119, 53)),
          //   ),
          //   elevation:
          //       0.5, // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
          // ),
          backgroundColor: Colors.white,
          body: Body());
    });
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(height: 1.h),
        Container(
          child: Image.asset("assets/image/knu.png"),
        ),
        SizedBox(height: 2.h),
        InkWell(
          child: Container(
            height: 6.3.h,
            width: 85.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#9F8563")),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                      SizedBox(width: 12.w),
                      Text("Website",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
        ),
        SizedBox(height: 4.h),
        InkWell(
          child: Container(
            height: 6.3.h,
            width: 85.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#9F8563")),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 25.0.sp,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text("LMS",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        SizedBox(height: 4.h),
        InkWell(
          child: Container(
            height: 6.3.h,
            width: 85.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#9F8563")),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.school_outlined,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text("About",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Aboutt()));
          },
        ),
        SizedBox(height: 4.h),
        InkWell(
          child: Container(
            height: 6.h,
            width: 85.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#9F8563")),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.book,
                        color: Colors.white,
                        size: 23.0.sp,
                      ),
                      SizedBox(width: 12.w),
                      Text("Wikipedia",
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Wiki()));
          },
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook,
                    size: 23.sp,
                    color: Color.fromARGB(
                      255,
                      155,
                      134,
                      104,
                    )),
                onPressed: () async {
                  final url = 'https://www.facebook.com/KnowledgeUniv/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }),
            SizedBox(width: 5.w),
            IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram,
                    size: 23.sp,
                    color: Color.fromARGB(
                      255,
                      155,
                      134,
                      104,
                    )),
                onPressed: () async {
                  final url = 'https://www.instagram.com/knowledgeuniv/?hl=en';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }),
            SizedBox(width: 5.w),
            IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter,
                    size: 23.sp,
                    color: Color.fromARGB(
                      255,
                      155,
                      134,
                      104,
                    )),
                onPressed: () async {
                  final url = 'https://twitter.com/KnowledgeUniv';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }),
            SizedBox(width: 5.w),
            IconButton(
                icon: Icon(Icons.mail,
                    size: 23.sp,
                    color: Color.fromARGB(
                      255,
                      155,
                      134,
                      104,
                    )),
                onPressed: () {
                  launch("mailto:info@knu.edu.iq");
                }),
            SizedBox(width: 5.w),
            IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedinIn,
                    size: 23.sp,
                    color: Color.fromARGB(
                      255,
                      155,
                      134,
                      104,
                    )),
                onPressed: () async {
                  final url =
                      'https://www.linkedin.com/in/knowledge-university-983a0b206/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                }),
          ],
        ),
        // SizedBox(height: 5.h),
        // Text("Developed By :- Omer mukhtar Saeed",
        //     style: TextStyle(

        //         fontSize: 8.sp,
        //         fontWeight: FontWeight.w200,
        //         fontFamily: "dos",
        //         color: HexColor("#9F8563"))),
      ],
    );
  }
}
