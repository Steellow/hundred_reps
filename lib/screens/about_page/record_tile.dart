import 'package:flutter/material.dart';
import 'package:hundred_reps/screens/shared_widgets/list_tile_icon.dart';
import 'package:hundred_reps/util/date_time_helper.dart';
import 'package:hundred_reps/util/shared_prefs.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RecordTile extends StatefulWidget {
  @override
  _RecordTileState createState() => _RecordTileState();
}

class _RecordTileState extends State<RecordTile> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getBestTime(),
      initialData: "00:00:00", // Not sure if this works, best time always loads too fast so doesn\t really matter
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListTile(
          leading: ListTileIcon(icon: MdiIcons.trophy),
          title: Text("Your Record"),
          subtitle: Text(printDuration(snapshot.data)), // ! THROWS ERROR IF THERE IS NO RECORD, FIX IT (if you pass null to printDuration)
        );
      },
    );
  }
}
