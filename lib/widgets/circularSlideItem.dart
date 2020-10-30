import 'package:flutter/material.dart';

class CircularSlideItem extends StatefulWidget {
  final String img;
  final String title;
  final double width;
  final double height;

  CircularSlideItem(
      {Key key,
      @required this.img,
      @required this.title,
      this.width,
      this.height})
      : super(key: key);

  @override
  _CircularSlideItemState createState() => _CircularSlideItemState();
}

class _CircularSlideItemState extends State<CircularSlideItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: ExactAssetImage(
              "${widget.img}",
            ),
            minRadius: 30,
            maxRadius: 50,
            backgroundColor: Colors.transparent,
          ),
          Text(
            "${widget.title}",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
