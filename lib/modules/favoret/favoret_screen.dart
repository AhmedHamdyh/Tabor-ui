import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tabor/shared/componants/componant.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class FavoretScreen extends StatelessWidget {
  const FavoretScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(
              text: 'المفضلة',
              screenHight: screenHight,
              screenWidth: screenWidth),
          for (int i = 0; i <= 5; i++)
            VerticalCompanyForm(
                distance: screenWidth * 0.12, iconColor: Colors.red),
        ],
      ),
    );
  }
}
