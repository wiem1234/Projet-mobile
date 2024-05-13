import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/text_style.dart';
import 'package:cv/pages/theme_provider_page.dart';

class EducationPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Theme(
      data: themeMode == ThemeMode.dark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Education", style: headerTextStyle),
                SizedBox(height: 10),
                _itemWidget(
                  "15 Semptembre 2020",
                  "J'ai poursuivi mes études au lycée Abou Kacem Chebbi, en suivant le programme du baccalauréat scientifique. En 2019, j'ai obtenu mon baccalauréat avec une spécialisation en sciences. Cette expérience m'a permis d'approfondir mes connaissances dans les matières scientifiques telles que les mathématiques, la physique, la chimie et la biologie, tout en développant mes compétences analytiques et mon esprit critique.",
                ),
                _itemWidget(
                  "1 Octobre 2020",
                  "En 2020, j'ai entrepris des études universitaires en informatique au sein de la faculté de multimédia. Cette expérience académique m'a offert une immersion approfondie dans les domaines de l'informatique, allant de la programmation et du développement de logiciels à la conception de systèmes d'information. ",
                ),
                _itemWidget(
                  "2 Octobre 2021",
                  "Le 2 octobre 2021, j'ai franchi une nouvelle étape dans mon parcours académique en entamant ma deuxième année d'études spécialisées en Big Data. Cette spécialisation représente une opportunité passionnante pour approfondir mes connaissances et compétences dans le domaine en pleine expansion du traitement et de l'analyse des données massives. ",
                ),
                _itemWidget(
                  "11 Semptembre 2022",
                  "Le 11 septembre 2023, j'ai franchi une étape cruciale de ma formation en passant au cycle ingénieur. Cette transition marque une progression significative dans mon parcours académique et professionnel, me rapprochant ainsi de mon objectif ultime de devenir un ingénieur qualifié dans le domaine de l'informatique.",
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemWidget(title, description) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
              ),
              Text(title, style: subHeaderTextStyle),
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 8, top: 12),
            decoration: BoxDecoration(
              border: Border(left: BorderSide(width: 2, color: Colors.blue)),
            ),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 15),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey,
              ),
              child: Text(description ?? ''),
            ),
          )
        ],
      ),
    );
  }
}
