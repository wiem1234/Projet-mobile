import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/text_style.dart';
import 'customAppBar_page.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationPersonnellePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Information Personnelle', style: headerTextStyle),
            SizedBox(height: 60),
            Center(
              child: Text(
                'Ingenieur Informatique',
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpeg"),
                radius: 80,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Wiem Miladi',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            )
,

            SizedBox(height: 20),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        'wiem.miladi@gmail.com',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        '+216 23252271',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      InkWell(
                        child: Row(
                          children: [
                            Icon(Icons.date_range, color: Colors.blue),
                            SizedBox(width: 10),
                            Text(
                              '23/07/2000 , Sfax',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          launch('https://www.google.com/maps/search/?api=1&query=TUNISIA MALL SFAX, Route de Tunis, Km 1.5, Tunisia');
                        },
                        child: Row(
                          children: [
                            Icon(Icons.place, color: Colors.blue),
                            SizedBox(width: 10),
                            Text(
                              'Sfax, Tunisia',
                              style: TextStyle(fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [],
      ),
    );
  }
}
