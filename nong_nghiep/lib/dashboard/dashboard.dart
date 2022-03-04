import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/dashboard/dashboardcontroller.dart';
import 'package:nong_nghiep/favorite/favorite.dart';
import 'package:nong_nghiep/history/history.dart';
import 'package:nong_nghiep/home/home.dart';
import 'package:nong_nghiep/profie/profie_page.dart';
import 'package:nong_nghiep/voucher/voucher.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              Home(),
              Voucher(),
              Favorite(),
              History(),
              ProfiePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabindex,
            items: [
              _listBottomNavigationbarItem(icon: Icons.home_outlined, label: ''),
              _listBottomNavigationbarItem(icon: Icons.card_giftcard_outlined, label: ''),
              _listBottomNavigationbarItem(icon: Icons.favorite, label: ''),
              _listBottomNavigationbarItem(icon: Icons.history, label: ''),
              _listBottomNavigationbarItem(icon: Icons.person_outline, label: ''),
            ],
          ),
        ),
      );
    });
  }
}

//List bottom navigation bar
_listBottomNavigationbarItem({required IconData icon, required String label}) => BottomNavigationBarItem(
  icon: Icon(icon),
  label: label,
);
