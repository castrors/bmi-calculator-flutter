import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;

  void updateColor(int gender){
    if(gender == 1){
      if(maleColor == inactiveCardColor){
        maleColor = activeCardColor;
        femaleColor = inactiveCardColor;
      } else{
        maleColor = inactiveCardColor;
      }
    }
    if(gender == 2){
      if(femaleColor == inactiveCardColor){
        femaleColor = activeCardColor;
        maleColor = inactiveCardColor;
      } else{
        femaleColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);  
                      });
                    },
                    child: ReusableWidget(
                      color: maleColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);  
                      });
                    },
                                      child: ReusableWidget(
                      color: femaleColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
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
