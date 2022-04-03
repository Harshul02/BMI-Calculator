import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {

  ResultPage(this.interpretation,this.bmiResult,this.resultText);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitle,
                ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              activeCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: ResultText,
                  ),
                  Text(
                    bmiResult,
                    style: BMIText,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyStyle,
                  ),
                ],
              ),
                () {
                  setState(() {});
                },
                ),
          ),
          BottomButton('RE-CALCULATE',
              (){
            Navigator.pop(context);
              })
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}

// class ResultPage extends StatefulWidget {
//   ResultPage(@required this.interpretation, @required this.bmiResult, @required this.resultText);
//
//   final String bmiResult;
//   final String resultText;
//   final String interpretation;
//
//   @override
//   _ResultPageState createState() => _ResultPageState();
// }
//
// class _ResultPageState extends State<ResultPage> {
// 
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('BMI CALCULATOR'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(15.0),
//                 alignment: Alignment.bottomLeft,
//                 child: Text(
//                   'Your Result',
//                   style: kTitle,
//                 ),
//               )),
//           Expanded(
//             flex: 5,
//             child: ReusableCard(
//               activeCardColor,
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     resultText.toUpperCase(),
//                     style: ResultText,
//                   ),
//                   Text(
//                     bmiResult,
//                     style: BMIText,
//                   ),
//                   Text(
//                     interpretation,
//                     textAlign: TextAlign.center,
//                     style: kBodyStyle,
//                   ),
//                 ],
//               ),
//                   () {
//                 setState(() {});
//               },
//             ),
//           ),
//           BottomButton('RE-CALCULATE',
//                   (){
//                 Navigator.pop(context);
//               })
//         ],
//       ),
//     );
//   }}