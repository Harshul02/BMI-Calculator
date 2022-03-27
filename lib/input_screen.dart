import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const activebottomColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(activeCardColor, IconContent(FontAwesomeIcons.mars, 'MALE'))),
              Expanded(
                  child:ReusableCard(activeCardColor, IconContent(FontAwesomeIcons.venus, 'FEMALE'))),
            ],
          )),
          Expanded(
              child: ReusableCard(activeCardColor)),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(activeCardColor)),
              Expanded(
                  child: ReusableCard(activeCardColor)),
            ],
          )),

          Container(
            color: activebottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}

class IconContent extends StatelessWidget {

  IconContent(this.icon,this.label);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
          fontSize: 18.0,
            color: Color(0xFF8D8E98),
        ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard(@required this.colour, this.cardChild);
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
    color: colour,
    borderRadius: BorderRadius.circular(10.0),
                ),
              );
  }
}

