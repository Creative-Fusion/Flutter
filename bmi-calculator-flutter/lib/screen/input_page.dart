
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screen/result_page.dart';
import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:bmi_calculator/components/roundbutton.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? bodyColor
                        : inactiveCardColor,
                    cardchild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    colour: selectedGender == Gender.female
                        ? bodyColor
                        : inactiveCardColor,
                    cardchild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: bodyColor,
              cardchild: Column(
                children: <Widget>[
                  Text('HEIGHT', style: labelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: numberStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 200,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
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
                    colour: bodyColor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                         weight.toString(),
                         style: numberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          RoundButton(
                            icon: FontAwesomeIcons.plus,
                            
                            onPressed:(){
                              setState(() {
                                weight++;
                              });
                            } 
                            ),
                            
SizedBox(
  width: 10.0,
),

  RoundButton(
                            icon: FontAwesomeIcons.minus,
                            
                            onPressed:(){
                              setState(() {
                                weight--;
                              });
                            } 
                            ),

                        ],
                        ),
                      ],
                    ),
                   
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: bodyColor,
                    cardchild: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Text(
                         'Age',
                            style: labelTextStyle,
                       ),
                            
                       Text(
                         age.toString(),
                         style: numberStyle,
                       ),


                       Row(
                                  mainAxisAlignment:MainAxisAlignment.center,
                           children: <Widget>[ 
                     
                                RoundButton(
                          icon:FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                             age++;
                            });
                          },
                                ),
SizedBox(
  width: 10.0, 
),
          
                      
                          RoundButton(
                            
                          icon:FontAwesomeIcons.minus,
                            onPressed: (){
                            setState(() {
                             age--;
                            },
                            );
                          },
                                ),
                                   ],
                       ),
                     ],
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
          Buttombutton(buttonTitle: 'CALCULATE',onTap: (){
       CalculatorBrain calc = CalculatorBrain(height: height, weight: weight); 
         
        Navigator.push(
          context,
        MaterialPageRoute(
          builder:(context) => ResultPage(
          bmiResult: calc.calculateBMI(),
          resultText: calc.getResult(),
          resultInterpretation: calc.getInterpretation(),

        
         ),
         ),
        );
     
}
          ),
        ],


      ),
    );
  }
}



