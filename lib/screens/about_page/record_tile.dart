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
      initialData: Duration(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListTile(
          leading: ListTileIcon(icon: MdiIcons.trophy),
          title: Text("Your Record"),
          subtitle: Text(printDuration(snapshot.data)),
          onLongPress: () {
            if (snapshot.data != null) {
              setState(() {
                final snackBar = SnackBar(
                  content: Text('Record reset'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      setState(() {
                        saveBestTime(snapshot.data); // If pressed undo, saving the earlier value for futureBuilder
                      });
                      print("Snackbar undo pressed");
                    },
                  ),
                );

                Scaffold.of(context).showSnackBar(snackBar);
                deleteBestTime();
              });
            }
          },
        );
      },
    );
  }
}
