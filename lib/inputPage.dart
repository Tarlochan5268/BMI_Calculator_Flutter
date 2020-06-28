import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Colors.pink;

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
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(
                      label: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconContent(
                      label: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),

      /*
        body: Container(
        height: 200,
        width: 170,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33), //color property go inside decoration
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      */
      //just wrap any widget inside Theme widget to change its theme
      /*
        floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
      */
    );
  }
}

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

//Refactoring of widget
class ReusableCard extends StatelessWidget {
  /*
      const ReusableCard({
        Key key,
      }) : super(key: key);
    */
  //we dont need key here so delete it
  //https://youtu.be/kn0EOS-ZiIc
  //keys help widget to keep track of it states
  final Color colour;
  final Widget cardChild;
  //statless dont change state -> immutable -> gets destroyed every time created -> need to add final to properties
  //const vs final
  ReusableCard({@required this.colour, this.cardChild});
  //@required annotation means this property is required to be initialized

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour, //color property go inside decoration
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
