import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/about_page/record_tile.dart';
import 'package:hundred_reps/screens/shared_widgets/list_tile_icon.dart';
import 'package:hundred_reps/screens/shared_widgets/tiles_subtitle.dart';
import 'package:hundred_reps/util/date_time_helper.dart';
import 'package:hundred_reps/util/shared_prefs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 12),
            TilesSubtitle(
              text: "Developed & designed by",
            ),
            ListTile(
              leading: ListTileIcon(icon: MdiIcons.web),
              title: Text("Hannes Kinnunen"),
              subtitle: Text("github.com/steellow"),
              onTap: () {
                _launchURL("https://www.github.com/steellow");
              },
            ),
            Divider(),
            TilesSubtitle(
              text: "Sources",
            ),
            ListTile(
              leading: ListTileIcon(icon: MdiIcons.githubCircle),
              title: Text("Source Code"),
              subtitle: Text("github.com/steellow/hundred_reps"),
              onTap: () {
                _launchURL("https://www.github.com/steellow/hundred_reps");
              },
            ),
            ListTile(
              leading: ListTileIcon(icon: MdiIcons.imageArea),
              title: Text("Man Doing Push Ups Cartoon.svg"),
              subtitle: Text("from Wikimedia Commons by Videoplasty.com, CC-BY-SA 4.0"),
              onTap: () {
                _launchURL("https://commons.wikimedia.org/wiki/File:Man_Doing_Push_Ups_Cartoon.svg");
              },
            ),
            Divider(),
            RecordTile(),
            ListTile(
              leading: ListTileIcon(icon: MdiIcons.googlePlay),
              title: Text("Rate on Google Play"),
              subtitle: Text("Google Play release coming soon"),
            )
          ],
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
