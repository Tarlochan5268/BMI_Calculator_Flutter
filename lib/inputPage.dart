import 'package:flutter/material.dart';

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
  //statless dont change state -> immutable -> gets destroyed every time created -> need to add final to properties
  //const vs final
  ReusableCard({@required this.colour});
  //@required annotation means this property is required to be initialized

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour, //color property go inside decoration
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
