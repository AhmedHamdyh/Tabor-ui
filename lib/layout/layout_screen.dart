import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tabor/layout/cubit/logic.dart';
import 'package:tabor/layout/cubit/states.dart';
import 'package:tabor/shared/componants/iconsax_icons.dart';

class layoutScreen extends StatelessWidget {
  const layoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => layoutCubit(),
      child: BlocConsumer<layoutCubit, layoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = layoutCubit.get(context);
          return Scaffold(
            backgroundColor: Color(0xfff5f5f5),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Color(0xff40000000))],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)),
                color: Color(0xffffffff),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(right: 32, left: 32, bottom: 32, top: 8),
                child: GNav(
                  onTabChange: (value) {
                    cubit.changeNaveBar(value);
                  },
                  selectedIndex: cubit.curentIndex,
                  gap: 16,
                  backgroundColor: Color(0xffffffff),
                  textStyle: TextStyle(color: Color(0xffffffff)),
                  activeColor: Color(0xffffffff),
                  tabBackgroundColor: Color(0xff009c7b),
                  tabBorderRadius: 24,
                  padding: EdgeInsets.all(8),
                  tabs: [
                    GButton(
                      icon: Iconsax.home_25,
                      iconColor: Color(0xff161616),
                      text: 'الرئيسية',
                    ),
                    GButton(
                      icon: Iconsax.ticket5,
                      iconColor: Color(0xff161616),
                      text: 'التذاكر',
                    ),
                    GButton(
                      icon: Iconsax.heart5,
                      iconColor: Color(0xff161616),
                      text: 'المفضلة',
                    ),
                  ],
                ),
              ),
            ),
            body: cubit.bottmScreen[cubit.curentIndex],
          );
        },
      ),
    );
  }
}
