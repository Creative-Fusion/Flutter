import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/round_button_icon.dart';
import 'package:com/calculator_brain.dart';
enum genderType {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderType selectedGender;
  int height=180;
  int weight=60;
  int age=18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender=genderType.male;
                          });
                        },
                        colour: selectedGender == genderType.male ? kActiveCardColor : kInactiveCardColor,
                        cardChild: IconContent(iconType: FontAwesomeIcons.mars,text: 'MALE',),
                    ),
                ),
                Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender=genderType.female;
                        });
                      },
                        colour: selectedGender == genderType.female ? kActiveCardColor : kInactiveCardColor,
                        cardChild: IconContent(iconType: FontAwesomeIcons.venus ,text: 'FEMALE'),
                    ),
                )
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max:220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        colour: kActiveCardColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                RoundIconButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: (){
                                      setState(() {
                                      weight++;
                                      });
                                    },
                                ),
                              ],
                            )
                          ],
                        )
                    ),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: kActiveCardColor,
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                             children: <Widget>[
                               Text(
                                 'AGE',
                                 style: kLabelTextStyle,
                               ),
                               Text(
                                 age.toString(),
                                 style: kNumberTextStyle,
                               ),
                               Row(
                                 children: <Widget>[
                                   RoundIconButton(
                                     icon: FontAwesomeIcons.minus,
                                     onPressed: (){
                                       setState(() {
                                         age--;
                                       });
                                     }
                                   ),
                                   SizedBox(
                                     width:10.0,
                                   ),
                                   RoundIconButton(
                                       icon: FontAwesomeIcons.plus,
                                       onPressed: (){
                                         setState(() {
                                           age++;
                                         });
                                       }
                                   )
                                 ],
                               )
                             ],
                            )
                          ],
                        )
                    ),
                )
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){

              CalculatorBrain calc=CalculatorBrain(height: height,weight: weight);



              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  )
              );
            },
          )
        ],
      ),
    );
  }
}

