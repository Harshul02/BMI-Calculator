import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'Constants.dart';

enum Gender{
  male,
  female,
  mix,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender= Gender.mix;
  int height= 180;

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
                  child: ReusableCard(
                      selectedGender == Gender.male?activeCardColor:inactiveCardColour, IconContent(FontAwesomeIcons.mars, 'MALE'), (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                  })),
              Expanded(
                  child:ReusableCard(selectedGender == Gender.female?activeCardColor:inactiveCardColour, IconContent(FontAwesomeIcons.venus, 'FEMALE'), (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                  })),
            ],
          )),
          Expanded(
              child: ReusableCard(
                  activeCardColor, Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                      style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                        SliderTheme(
                        data: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.white,
    inactiveTrackColor: Color(0xFF8D8E98),
    thumbColor: Color(0xFFEB1555),
    overlayColor: Color(0x29EB1555),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    ),

                          child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged:(double newValue){
                            setState(() {
                                height=newValue.round();
                            });
  }),
                        )
                ],
              ),
              () {
                    setState(() {});
                  })),
          // Expanded(
          //     child: Row(
          //   children: [
          //     Expanded(
          //         child: ReusableCard(activeCardColor)),
          //     Expanded(
          //         child: ReusableCard(activeCardColor)),
          //   ],
          // )),

          Container(
            color: activebottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}




