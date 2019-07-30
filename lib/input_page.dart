import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableWidget(
                    color: Color(0xFF1D1E33),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    color: Color(0xFF1D1E33),
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ReusableWidget(color: Color(0xFF1D1E33)),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableWidget(color: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableWidget(color: Color(0xFF1D1E33)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}



