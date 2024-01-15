import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomHeight = 80.0;
const activColorCard = Color(0xFF1D1E33);
const inactiveColorCard = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
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
                      colour: selectedGender == Gender.male ? activColorCard : inactiveColorCard,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? activColorCard : inactiveColorCard,
                      childCard: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ReusableCard(
            //     colour: activColorCard,
            //     childCard: Column(),
            //   ),
            // ),
            // Expanded(
            //   child: Row(
            //     children: <Widget>[
            //       Expanded(
            //         child: ReusableCard(
            //           colour: activColorCard,
            //           childCard: Column(),
            //         ),
            //       ),
            //       Expanded(
            //         child: ReusableCard(
            //           colour: activColorCard,
            //           childCard: Column(),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomHeight,
            ),
          ],
        ),
      ),
    );
  }
}
