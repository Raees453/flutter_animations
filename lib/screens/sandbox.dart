// Just a begginer level guide not a part of project

import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key key}) : super(key: key);

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _width = 200, _opacity = 1, _margin = 0;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _width,
          color: _color,
          margin: EdgeInsets.all(_margin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() => _margin = _margin == 20 ? 0 : 20);
                },
                child: Text('Animate Margin'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() => _color =
                      _color == Colors.blue ? Colors.teal : Colors.blue);
                },
                child: Text('Animate Color'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() => _width = _width == 200 ? 400 : 200);
                },
                child: Text('Animate Width'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() => _opacity = _opacity == 1 ? 0 : 1);
                },
                child: Text('Animate Opacity'),
              ),
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 3),
                child: Text('Hide Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
