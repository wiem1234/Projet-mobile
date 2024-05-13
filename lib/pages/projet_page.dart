import 'package:cv/pages/theme_provider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/text_style.dart';

class ProjetPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22),
        child: Container(
          color: themeMode == ThemeMode.dark ? Colors.black : Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Projects", style: headerTextStyle),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  _itemWidget("1", "Site web Statique : création d'un site web statique", themeMode, context),
                  _itemWidget("2", "Application Andoid : Développement d'un formulaire de saisie d'informations personelle et d'authenitifications", themeMode, context),
                  _itemWidget("3", "Application web : Gestion de stock", themeMode, context),
                ],
              ),
              Row(
                children: <Widget>[
                  _itemWidget("4", "Application web : Gestion commerciale", themeMode, context),
                  _itemWidget("5", "Plateforme d'E-commerce : Vente de Produits", themeMode, context),
                  _itemWidget("6", "Application de Gestion de Tâches : Organisateur Personnel", themeMode, context),
                ],
              ),
              Row(
                children: <Widget>[
                  _itemWidget("7", "Application Web : Gestion de Location de Voitures", themeMode, context),
                  _itemWidget("8", "Plateforme d'Éducation en Ligne", themeMode, context),
                  _itemWidget("9", "Application web : d'Agence de Voyage", themeMode, context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemWidget(String title, String message, ThemeMode themeMode, BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                color: themeMode == ThemeMode.dark ? Colors.black : Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(title),
                      color: themeMode == ThemeMode.dark ? Colors.blue[800] : Colors.blue[300],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Text(
                        "Project Name",
                        style: TextStyle(color: themeMode == ThemeMode.dark ? Colors.blue : Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Text(
                        message,
                        style: TextStyle(color: themeMode == ThemeMode.dark ? Colors.white : Colors.black),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          margin: EdgeInsets.all(3),
          height: 100,
          color: themeMode == ThemeMode.dark ? Colors.grey[800] : Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(color: themeMode == ThemeMode.dark ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
