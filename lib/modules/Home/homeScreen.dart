import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tabor/modules/on_bording/on_bording.dart';
import 'package:tabor/shared/componants/componant.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: screenHight * 0.17,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            boxShadow: [BoxShadow(color: Color(0xff40000000))],
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DefoltSvgImage(
                    image: 'assets/images/Tabor_logo.svg',
                    width: screenWidth * 0.14,
                    hight: screenWidth * 0.14),
                SizedBox(
                  width: 1,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" مرحبا احمد",
                        style: const TextStyle(
                            color: const Color(0xff161616),
                            fontWeight: FontWeight.w500,
                            fontFamily: "ReadexPro",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                        textAlign: TextAlign.right),
                    Text(" كيف يمكننى مساعدتك",
                        style: const TextStyle(
                            color: const Color(0xff161616),
                            fontWeight: FontWeight.w300,
                            fontFamily: "ReadexPro",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.right)
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.15,
                ),
                DefoltIcon(
                    width: screenWidth * 0.1,
                    hight: screenWidth * 0.1,
                    icon: Icons.search_sharp),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                DefoltIcon(
                    width: screenWidth * 0.1,
                    hight: screenWidth * 0.1,
                    icon: Icons.location_on)
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 400,
              width: 300,
              color: Color(0xffffffff),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 20,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Color(0xfff5f5f5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
