import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:movie_app/features/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:movie_app/shared/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoreBottomNavigationBarWidget extends StatelessWidget {
  CoreBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: bottomNavItems,
          unselectedItemColor: AppColors.scaffoldBgColor,
          currentIndex: state.tabIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.scaffoldBgColor,
          onTap: (index) {
            BlocProvider.of<BottomNavBarBloc>(context).add(TabChange(tabIndex: index));
          },
        );
      },
    );
  }

  final List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
     icon: FaIcon(FontAwesomeIcons.house, color: AppColors.greyColor), 
      label: 'Home' ,
     activeIcon: FaIcon(FontAwesomeIcons.house, color: AppColors.scaffoldBgColor), 
    ),
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.heart, color: AppColors.greyColor), 
      label: 'Favoriler' ,
     activeIcon: FaIcon(FontAwesomeIcons.heart, color: AppColors.scaffoldBgColor),
    ),
    
    const BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.user, color: AppColors.greyColor), 
      label: 'Profil' ,
     activeIcon: FaIcon(FontAwesomeIcons.user, color: AppColors.scaffoldBgColor), 
    ),
  ];
}
