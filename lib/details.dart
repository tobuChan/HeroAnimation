import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final path;
  Detail({Key key, this.path}) : super(key: key);

  @override
  _DetailState createState() => _DetailState(path);
}

class _DetailState extends State<Detail> {
  final path;
  _DetailState(this.path);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Detail'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Hero(
          tag: path,
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
