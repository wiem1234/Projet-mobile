import 'package:flutter/material.dart';
import 'package:cv/pages/theme_provider_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/text_style.dart';

class CompetencePage extends ConsumerWidget {
  List<Map<String, dynamic>> skills = [
    {"icon": Icons.developer_mode, "text": "Devops"},
    {"icon": Icons.cloud, "text": "Cloud"},
    {"icon": Icons.code, "text": "Coding"},
    {"icon": Icons.design_services, "text": "Design"},
    {"icon": Icons.storage, "text": "Data"},
    {"icon": Icons.language, "text": "Languages"},
    {"icon": Icons.analytics, "text": "Analytics"},
    {"icon": Icons.security, "text": "Security"},
    {"icon": Icons.star, "text": "Creativity"},
    {"icon": Icons.web, "text": "Web"},
    {"icon": Icons.developer_board, "text": "Hardware"},
    {"icon": Icons.apps, "text": "Apps"},




  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Theme(
      data: ThemeData(
        brightness: themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: themeMode == ThemeMode.dark ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Compétences',
                          style: headerTextStyle,

                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30, bottom: 50),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: themeMode == ThemeMode.dark ? Colors.grey[800] : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          skills[index]["icon"],
                          size: 30,
                          color: themeMode == ThemeMode.dark ? Colors.white : Colors.black,
                        ),
                        SizedBox(height: 5),
                        Text(
                          skills[index]["text"],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: themeMode == ThemeMode.dark ? Colors.white : Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
