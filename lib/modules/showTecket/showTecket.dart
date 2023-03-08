import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabor/layout/layout_screen.dart';
import 'package:tabor/shared/componants/componant.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class ShowTecketScreen extends StatelessWidget {
  const ShowTecketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    double containrwidth = screenWidth - 64;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              height: screenHight * 0.17,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(blurRadius: 4, color: Color(0xff40000000))
                ],
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('التذكرة',
                        style: const TextStyle(
                            color: Color(0xff161616),
                            fontWeight: FontWeight.w600,
                            fontFamily: "ReadexPro",
                            fontStyle: FontStyle.normal,
                            fontSize: 21.0),
                        textAlign: TextAlign.right),
                    SizedBox(
                      width: screenWidth * 0.62,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffbceee3),
                      child: InkWell(
                          onTap: () {
                            NavigateAndFinsh(
                                context,
                                Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: layoutScreen()));
                          },
                          child: Icon(Icons.close)),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 32, left: 32, top: 16, bottom: 32),
                  child: Material(
                    color: Color(0xfff5f5f5),
                    elevation: 4,
                    borderRadius: BorderRadius.circular(16),
                    shadowColor: Color(0x40000000),
                    child: SvgPicture.asset(
                      'assets/images/Subtract.svg',
                      height: 376,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 16, left: 16, top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Center(
                                child: Image.asset(
                                    'assets/images/Rectangle 1.png')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("البنك الاهلى المصرى",
                                    style: const TextStyle(
                                        color: const Color(0xff161616),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "ReadexPro",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                    textAlign: TextAlign.right),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 8),
                                  child: Text("الفيوم - فرع الجامعة",
                                      style: const TextStyle(
                                          color: const Color(0xff161616),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "ReadexPro",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 12.0),
                                      textAlign: TextAlign.right),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text("طابور خدمة العملاء",
                                      style: const TextStyle(
                                          color: const Color(0xff161616),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "ReadexPro",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 12.0),
                                      textAlign: TextAlign.right),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: screenWidth * 0.052,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Center(
                        child: Container(
                          width: screenWidth * 0.75,
                          height: 376 * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xff19161616))),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Row(
                              children: [
                                Text("العدد فى الانتظار",
                                    style: const TextStyle(
                                        color: const Color(0xff161616),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "ReadexPro",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.0),
                                    textAlign: TextAlign.right),
                                SizedBox(
                                  width: screenWidth * 0.22,
                                ),
                                Text(" 3 ",
                                    style: const TextStyle(
                                        color: const Color(0xff161616),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "ReadexPro",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.0),
                                    textAlign: TextAlign.right)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 376 * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("الوقت المتبقى",
                                style: const TextStyle(
                                    color: const Color(0xff161616),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "ReadexPro",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.0),
                                textAlign: TextAlign.right),
                            SizedBox(
                              width: screenWidth * 0.38,
                            ),
                            Text("05:00",
                                style: const TextStyle(
                                    color: const Color(0xff161616),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "ReadexPro",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14.0),
                                textAlign: TextAlign.right),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Container(
                          width: containrwidth - 32,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(stops: [
                                0.3,
                                0.3
                              ], colors: [
                                Color(0xffbceee3),
                                Color(0xff009c7b),
                              ])),
                        ),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text("رقم الدور",
                            style: const TextStyle(
                                color: const Color(0xff161616),
                                fontWeight: FontWeight.w500,
                                fontFamily: "ReadexPro",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.right),
                      ),
                      Text("C-002",
                          style: const TextStyle(
                              color: const Color(0xff161616),
                              fontWeight: FontWeight.w500,
                              fontFamily: "ReadexPro",
                              fontStyle: FontStyle.normal,
                              fontSize: 41.0),
                          textAlign: TextAlign.right)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Container(
                    width: screenWidth * 0.39,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 4,
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/Frame 70.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Text("الذهاب للموقع",
                            style: const TextStyle(
                                color: const Color(0xff1a73e8),
                                fontWeight: FontWeight.w500,
                                fontFamily: "ReadexPro",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.0),
                            textAlign: TextAlign.right)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: InkWell(
                      onTap: () {
                        NavigateAndFinsh(
                            context,
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: layoutScreen()));
                      },
                      child: Container(
                        width: screenWidth * 0.39,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Color(0xff161616),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.close,
                              color: Color(0xffffffff),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(" الغاء التذكرة",
                                style: const TextStyle(
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "ReadexPro",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16.0),
                                textAlign: TextAlign.right)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 76,
            ),
            Center(
              child: MaterialButton(
                color: Color(0xff009c7b),
                minWidth: screenWidth - 32,
                height: 52,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                onPressed: () {
                  NavigateAndFinsh(
                      context,
                      Directionality(
                          textDirection: TextDirection.rtl,
                          child: layoutScreen()));
                },
                child: Text("القائمة الرئسية",
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                        fontFamily: "ReadexPro",
                        fontStyle: FontStyle.normal,
                        fontSize: 18.0),
                    textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
