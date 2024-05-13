import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/text_style.dart';
import 'package:cv/pages/theme_provider_page.dart';

class ExperienceProfessionnellePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Expérience Professionnelle', style: headerTextStyle.copyWith(color: Colors.blue)
        ),
        backgroundColor: themeMode == ThemeMode.dark ? Colors.black : Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            _itemWidget("10 Juin 2020", "Pendant mon stage d'été lors de ma première année de licence chez Hypremedia, j'ai eu l'occasion de développer mes compétences en concevant une application web de gestion de stock.", themeMode),
            _itemWidget("1 Juillet 2021", "Pendant mon PFE en troisième année de licence chez Prismedia, j'ai eu l'opportunité de concevoir et de mettre en œuvre une application web dédiée à la gestion commerciale.", themeMode),
            _itemWidget("3 aout 2022", "Le 3 aout 2021, j'ai franchi une nouvelle étape dans mon parcours académique en entamant ma deuxième année d'études spécialisées en Big Data. Cette spécialisation représente une opportunité passionnante pour approfondir mes connaissances et compétences dans le domaine en pleine expansion du traitement et de l'analyse des données massives.", themeMode),
            _itemWidget("11 juillet 2023", "Lors de ma première année d'ingénierie, j'ai débuté mon parcours professionnel en effectuant un stage estival chez Clynicis, où j'ai saisi l'opportunité de suivre une formation sur Udemy, élargissant ainsi mon savoir-faire professionnel.", themeMode),
          ],
        ),
      ),
    );
  }

  Widget _itemWidget(String title, String description, ThemeMode themeMode) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: themeMode == ThemeMode.dark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
