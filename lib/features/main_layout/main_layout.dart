import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/assets_manager.dart';
import 'package:islami_app/core/resources/colors_manager.dart';
import 'package:islami_app/features/main_layout/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/features/main_layout/tabs/quran/quran_tab.dart';
import 'package:islami_app/features/main_layout/tabs/radio/radio_tab.dart';
import 'package:islami_app/features/main_layout/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/features/main_layout/tabs/time/time_tab.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const TimeTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: tabs[selectedIndex], // Default to the first tab

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onTab,
        backgroundColor: ColorsManager.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.black,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.quran)),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.hadeth)),
            label: 'Hadeth',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.sebha)),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.radio)),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(IconAssets.time)),
            label: 'Time',
          ),
        ],
      ),
    );
  }

  void _onTab(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
