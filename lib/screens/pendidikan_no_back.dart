import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:udemy_course_i_am_rich/screens/home.dart';
import 'package:udemy_course_i_am_rich/utilities/all_pendidikan.dart';
import 'package:udemy_course_i_am_rich/widgets/viewAll2.dart';

class PendidikanNoBack extends StatefulWidget {
  @override
  _PendidikanNoBackState createState() => _PendidikanNoBackState();
}

class _PendidikanNoBackState extends State<PendidikanNoBack> {
  // ignore: unused_field
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(80, 80, 80, 100),
      appBar: new AppBar(
        title: new Text("PENDIDIKAN/PENGALAMAN"),
        backgroundColor: Color.fromRGBO(31, 31, 31, 100),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects == null ? 0 : projects.length,
              itemBuilder: (BuildContext context, int index) {
                Map project = projects[index];

                return ViewAll2(
                  img: project["img"],
                  backgroundImg: project["backgroundImg"],
                  title: project["title"],
                  description: project["description"],
                  brief: project["brief"],
                  difficulty: project["difficulty"],
                );
              },
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
