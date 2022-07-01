import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class About extends StatelessWidget {
  About({super.key});

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "About",
              style: TextStyle(fontSize: 22),
            ),
            backgroundColor: HexColor("#9F8563"),
          ),
          body: Column(
            children: [
              Container(
                child: Image.asset(
                  "assets/image/knu.png",
                  height: 28.h,
                  width: 150.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 35.h,
                width: 40.h,
                decoration: BoxDecoration(
                  color: HexColor("#9F8563"),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "KNU knu knu knu kn u kn ",
                  style: TextStyle(fontSize: 30.sp, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.facebook,
                          size: 25.sp,
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
                          size: 25.sp,
                          color: Color.fromARGB(
                            255,
                            155,
                            134,
                            104,
                          )),
                      onPressed: () async {
                        final url =
                            'https://www.instagram.com/knowledgeuniv/?hl=en';
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      }),
                  SizedBox(width: 5.w),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.twitter,
                          size: 25.sp,
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
                          size: 25.sp,
                          color: Color.fromARGB(
                            255,
                            155,
                            134,
                            104,
                          )),
                      onPressed: () {
                        launch("mailto:omermukhtar37@gmail.com");
                      }),
                  SizedBox(width: 5.w),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedinIn,
                          size: 25.sp,
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
            ],
          ));
    });
  }
}

JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
  return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        // ignore: deprecated_member_use
        // Scaffold.of(context).showSnackBar(
        //   SnackBar(content: Text(message.message)),
        // );
      });
}
