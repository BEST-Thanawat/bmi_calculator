import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(activeCardColor)),
                  Expanded(child: ReusableCard(activeCardColor)),
                ],
              ),
            ),
            Expanded(child: ReusableCard(Color(0xFF1D1E33))),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(activeCardColor)),
                  Expanded(child: ReusableCard(activeCardColor)),
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

class ReusableCard extends StatelessWidget {
  ReusableCard(this.color);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
    );
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
