import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tabor/modules/branshes/branshes.dart';
import 'package:tabor/modules/service/service.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

Widget DefoltButon({
  double width = double.infinity,
  required double fontsize,
  Color background = Colors.blue,
  required VoidCallback? function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w500,
            fontFamily: "ReadexPro",
            fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
        ),
      ),
    );

Widget DefoltTextButton(
        {required VoidCallback? function,
        required String text,
        required TextAlign direction}) =>
    TextButton(
      onPressed: function,
      child: Text(text.toUpperCase(),
          style: const TextStyle(
              color: const Color(0xff161616),
              fontWeight: FontWeight.w400,
              fontFamily: "ReadexPro",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
          textAlign: direction),
    );

Widget DefoltFormFilde({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged<String>? onChange,
  GestureTapCallback? ontap,
  required FormFieldValidator<String>? validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  bool isClicable = true,
  VoidCallback? SuffixPresd,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (value) {
        print(value);
      },
      onChanged: onChange,
      enabled: isClicable,
      validator: validate,
      onTap: ontap,
      obscureText: isPassword,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: SuffixPresd,
                icon: Icon(
                  suffix,
                ))
            : null,
        labelText: label,

        //border: OutlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );

void NavigateTo(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

void NavigateAndFinsh(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false);

Widget DefoltSvgImage(
        {required String image,
        double? width,
        double? hight,
        bool Drawing = true}) =>
    SvgPicture.asset(
      image,
      width: width,
      height: hight,
      allowDrawingOutsideViewBox: Drawing,
    );

Widget DefoltIcon(
        {required double width,
        required double hight,
        required IconData icon,
        Widget? page,
        BuildContext? context}) =>
    InkWell(
      onTap: () {
        NavigateTo(context, page);
      },
      child: Container(
          width: width,
          height: hight,
          decoration: BoxDecoration(
              color: Color(0xffbceee3),
              borderRadius: BorderRadius.circular(50)),
          child: Icon(
            icon,
            color: Color.fromARGB(255, 10, 90, 12),
          )),
    );

Widget DefoltHorisentalCompanyform(
        {required String image,
        double? width,
        double? hight,
        required BuildContext context}) =>
    Padding(
      padding: const EdgeInsets.only(
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              NavigateTo(context, BranshesScreen());
            },
            child: Container(
              width: width,
              height: hight,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(blurRadius: 4, color: Color(0xff40000000))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DefoltSvgImage(
                  image: image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text("خدمة عملاء اتصالات",
              style: const TextStyle(
                  color: const Color(0xff161616),
                  fontWeight: FontWeight.w400,
                  fontFamily: "ReadexPro",
                  fontStyle: FontStyle.normal,
                  fontSize: 14),
              textAlign: TextAlign.right)
        ],
      ),
    );

Widget VerticalCompanyForm(
        {required String image,
        required String name,
        required int nomberOfBranshes,
        required double screenWidth,
        required Color iconColor,
        double Iconopacity = 0.0,
        required BuildContext context}) =>
    Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: InkWell(
        onTap: () {
          NavigateTo(context, BranshesScreen());
        },
        child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(blurRadius: 4, color: Color(0xff40000000))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DefoltSvgImage(
                    image: image,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          color: const Color(0xff161616),
                          fontWeight: FontWeight.w500,
                          fontFamily: "ReadexPro",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.right),
                  Text("$nomberOfBranshes" + ' ' + 'فرع',
                      style: const TextStyle(
                          color: const Color(0xff161616),
                          fontWeight: FontWeight.w400,
                          fontFamily: "ReadexPro",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.right)
                ],
              ),
              SizedBox(
                width: screenWidth * 0.12,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Opacity(
                    opacity: Iconopacity,
                    child: Icon(
                      Iconsax.heart5,
                      color: iconColor,
                      size: 32,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );

Widget CustomAppBar(
        {required double screenHight,
        required double screenWidth,
        required String text}) =>
    Container(
      height: screenHight * 0.17,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        boxShadow: [BoxShadow(color: Color(0xff40000000))],
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text,
                style: const TextStyle(
                    color: const Color(0xff161616),
                    fontWeight: FontWeight.w600,
                    fontFamily: "ReadexPro",
                    fontStyle: FontStyle.normal,
                    fontSize: 21.0),
                textAlign: TextAlign.right),
            SizedBox(
              width: screenWidth * 0.45,
            ),
            DefoltIcon(
                width: screenWidth * 0.1,
                hight: screenWidth * 0.1,
                icon: Iconsax.search_normal_14),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            DefoltIcon(
                width: screenWidth * 0.1,
                hight: screenWidth * 0.1,
                icon: Iconsax.location5)
          ],
        ),
      ),
    );

Widget AppBar2(
        {required double screenHight,
        required double screenWidth,
        required String text,
        required BuildContext context}) =>
    Container(
      height: screenHight * 0.17,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        boxShadow: [BoxShadow(blurRadius: 4, color: Color(0xff40000000))],
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            DefoltIcon(
                width: screenWidth * 0.1,
                hight: screenWidth * 0.1,
                icon: Iconsax.location5),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            DefoltIcon(
                width: screenWidth * 0.1,
                hight: screenWidth * 0.1,
                icon: Iconsax.search_normal_14),
            SizedBox(
              width: screenWidth * 0.42,
            ),
            Text(text,
                style: const TextStyle(
                    color: Color(0xff009c7b),
                    fontWeight: FontWeight.w600,
                    fontFamily: "ReadexPro",
                    fontStyle: FontStyle.normal,
                    fontSize: 21.0),
                textAlign: TextAlign.right),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: DefoltSvgImage(
                  image: 'assets/images/vuesax_bulk_arrow_square_right.svg'),
            )
          ],
        ),
      ),
    );

Widget BranshesCard({
  required double screenWidth,
  required BuildContext context,
  required String image,
  required String name,
  required double destance,
}) =>
    Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: InkWell(
          onTap: () {
            NavigateTo(context, Service_screen());
          },
          child: Container(
            width: screenWidth - 32,
            height: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color(0xffffffff),
              boxShadow: [BoxShadow(color: Color(0xff40000000), blurRadius: 4)],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  DefoltSvgImage(image: image),
                  SizedBox(
                    width: screenWidth * 0.34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(name,
                          style: const TextStyle(
                              color: const Color(0xff161616),
                              fontWeight: FontWeight.w500,
                              fontFamily: "ReadexPro",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.right),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text("كم",
                              style: const TextStyle(
                                  color: const Color(0xff161616),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "ReadexPro",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.0),
                              textAlign: TextAlign.right),
                          Text(" " + "$destance",
                              style: const TextStyle(
                                  color: const Color(0xff161616),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "ReadexPro",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14.0),
                              textAlign: TextAlign.right),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
