import 'package:cv/pages/certification_page.dart';
import 'package:cv/pages/eduaction_page.dart';
import 'package:cv/pages/experience_professionnelle_page.dart';
import 'package:cv/pages/information_personnelle_page.dart';
import 'package:cv/pages/projet_page.dart';
import 'package:cv/pages/competence_page.dart';
import 'package:cv/pages/theme_provider_page.dart';
import 'package:cv/utils/AppColors.dart';
import 'package:cv/utils/AppIcons.dart';
import 'package:cv/widgets/navigation_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {

  runApp(

    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer(
      builder: (context, ref, child) {
        final themeMode = ref.watch(themeModeProvider);
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeMode,
          home: MyHomePage(),
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController
      _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20.0;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backgroundLight,
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 10),
        child: Row(
          children: <Widget>[
            Container(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/avtar1.png"),
                  ),
                  NavigationMenu(navHome,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 0, onClick: () {
                    _tabController.animateTo(0);
                  }),
                  NavigationMenu(navTime,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 1, onClick: () {
                        _tabController.animateTo(1);
                      }),
                  NavigationMenu(navPortfolio,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 2, onClick: () {
                        _tabController.animateTo(2);
                      }),
                  NavigationMenu(navGroup,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 3, onClick: () {
                        _tabController.animateTo(3);
                      }),
                  NavigationMenu(navContact,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 4, onClick: () {
                        _tabController.animateTo(4);
                      }),

                  NavigationMenu(navExperience,
                      height: iconSize,
                      width: iconSize,
                      isSelected: selectedMenuIndex == 5, onClick: () {
                        _tabController.animateTo(5);
                      }),



                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    InformationPersonnellePage(),
                    EducationPage(),
                    ProjetPage(),
                    CompetencePage(),
                    Certification(),
                    ExperienceProfessionnellePage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
