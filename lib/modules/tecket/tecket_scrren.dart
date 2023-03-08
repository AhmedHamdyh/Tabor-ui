import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tabor/modules/on_bording/on_bording.dart';
import 'package:tabor/modules/tecktRelode/tecktRelode.dart';
import 'package:tabor/shared/componants/componant.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class TecketScrren extends StatelessWidget {
  const TecketScrren({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    double containrwidth = screenWidth - 64;
    double cotanrhigt = screenHight * 0.45;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(
            screenHight: screenHight,
            screenWidth: screenWidth,
            text: 'التذاكر' + '    '),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Opacity(
            opacity: 0.699999988079071,
            child: Text("تذاكر نشطة",
                style: const TextStyle(
                    color: const Color(0xff161616),
                    fontWeight: FontWeight.w500,
                    fontFamily: "ReadexPro",
                    fontStyle: FontStyle.normal,
                    fontSize: 21.0),
                textAlign: TextAlign.right),
          ),
        ),
        Center(
          child: Container(
            width: screenWidth - 64,
            height: screenHight * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x40000000),
                      offset: Offset(0, 0),
                      spreadRadius: 0)
                ],
                color: const Color(0xffffffff)),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
                  child: Row(
                    children: [
                      Center(
                          child: DefoltSvgImage(
                              image: 'assets/images/Googel.svg')),
                      SizedBox(
                        width: 8,
                      ),
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
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                      Padding(
                        padding: const EdgeInsets.all(11),
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff40000000), blurRadius: 4),
                              ]),
                          child: InkWell(
                              onTap: () {
                                print(screenHight);
                              },
                              child: Image.asset('assets/images/Frame 70.png')),
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff161616),
                            ),
                            child: Icon(
                              Icons.close,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: cotanrhigt * 0.06,
                ),
                Center(
                  child: Container(
                    width: screenWidth * 0.75,
                    height: cotanrhigt * 0.12,
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
                  height: cotanrhigt * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: Row(
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
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      width: 25,
                      height: 35,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0x40000000),
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                spreadRadius: 0)
                          ],
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                    ),
                    SizedBox(
                      width: containrwidth - 50,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              children: List.generate(
                                  (constraints.constrainWidth() / 13).floor(),
                                  (index) => Text(
                                        '-',
                                        style: TextStyle(
                                            color: Color(0xfff5f5f5),
                                            fontSize: 30),
                                      )));
                        },
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 35,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0x40000000),
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                spreadRadius: 0)
                          ],
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                    ),
                  ],
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
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Opacity(
            opacity: 0.699999988079071,
            child: Text("تذاكر سابقة",
                style: const TextStyle(
                    color: const Color(0xff161616),
                    fontWeight: FontWeight.w500,
                    fontFamily: "ReadexPro",
                    fontStyle: FontStyle.normal,
                    fontSize: 21.0),
                textAlign: TextAlign.right),
          ),
        ),
        Center(
          child: InkWell(
            onTap: () {
              NavigateTo(context, tecketReloudeScreen());
            },
            child: Container(
              width: screenWidth - 48,
              height: 88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0x40000000),
                        offset: Offset(0, 0),
                        spreadRadius: 0)
                  ],
                  color: const Color(0xffffffff)),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Row(children: [
                  Center(
                      child: DefoltSvgImage(image: 'assets/images/Googel.svg')),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
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
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
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
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Container(
                        width: 30,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xfff5f5f5),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        NavigateTo(context, tecketReloudeScreen());
                      },
                      icon: Icon(
                        Iconsax.repeat5,
                        size: 32,
                      ))
                ]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
