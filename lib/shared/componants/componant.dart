import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

Widget DefoltHorisentalCompanyform({
  required String image,
  double? width,
  double? hight,
}) =>
    Padding(
      padding: const EdgeInsets.only(
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
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
              child: DefoltSvgImage(
                image: image,
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

Widget VerticalCompanyForm({
  String image = 'assets/images/Googel.svg',
  double? distance,
  required Color iconColor,
}) =>
    Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: InkWell(
        onTap: () {},
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
                child: DefoltSvgImage(image: image, width: 48, hight: 48),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("خدمة عملاء فودافون",
                      style: const TextStyle(
                          color: const Color(0xff161616),
                          fontWeight: FontWeight.w500,
                          fontFamily: "ReadexPro",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.right),
                  Text('15' + ' ' + 'فرع',
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
                width: distance,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.heart5,
                    color: iconColor,
                    size: 32,
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
