import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                          cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'))),
                  Expanded(
                      child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                          cardChild: IconContent(FontAwesomeIcons.venus, 'MALE'))),
                ],
              ),
            ),
            Expanded(child: ReusableCard(color: activeCardColor, cardChild: Column())),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          color: activeCardColor, cardChild: IconContent(FontAwesomeIcons.question, 'MALE'))),
                  Expanded(
                      child: ReusableCard(
                          color: activeCardColor, cardChild: IconContent(FontAwesomeIcons.question, 'MALE'))),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

/*
Container(
margin: EdgeInsets.all(15),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: Color(0xFF1D1E33),
),
),*/
