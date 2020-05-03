import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon.dart';
import 'package:bmi_calculator/calc_brain.dart';
import 'results_page.dart';

//emum assocate values to something: to remove problems like 1-male, 2-female
enum GenderType {
  male,
  female
} //gender has 2 values (Emum stats with Uppercase)

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveCardColor;
  Color femaleCardColor = kinactiveCardColor;
  GenderType selectedGender;
  int height = 150;
  int weight = 50;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    colour: selectedGender == GenderType.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, cardText: 'MALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                        // print('Male is pressed');
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    colour: selectedGender == GenderType.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContent(
                        icon: FontAwesomeIcons.mars, cardText: 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                        print('Female is pressed');
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: klabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: knumberTextStyle,
                            ),
                            Text(
                              'cm',
                            )
                          ],
                        ),
                        SliderTheme(
                          //.of to make copy of current slider(in present context) .copyWith to make changes
                          //we can copy the SliderTheme data and paste in Main ThemeData to make it appwide
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            // activeColor: Colors.white, // ! this overrides the thumb color
                            value: height.toDouble(),
                            max: 220.0,
                            min: 120.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: klabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icons: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icons: FontAwesomeIcons.minus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: klabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icons: FontAwesomeIcons.plus,
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icons: FontAwesomeIcons.minus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              text: 'CALCULATE',
              onTap: () {
                CalcBrain calcBrain = CalcBrain(height: height, weight: weight);
                Navigator.push(
                  //navigation to resultspage
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(
                        bmiResult: calcBrain.calculateBMI(),
                        description: calcBrain.description(),
                        interpretaion: calcBrain.interpretation(),
                      );
                    },
                  ),
                );
                // ? Another way to navigate between pages
                // Navigator.pushNamed(context, '/results');
              })
        ],
      ),
    );
  }
}

//This funtion was inside stfull class
/* void updateCardColor(GenderType gender) {
    if (gender == GenderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == GenderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  } */
