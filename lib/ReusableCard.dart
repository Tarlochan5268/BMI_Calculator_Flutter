import 'package:flutter/material.dart';

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
  final Function onPressed;
  //statless dont change state -> immutable -> gets destroyed every time created -> need to add final to properties
  //const vs final
  ReusableCard({@required this.colour, this.cardChild, this.onPressed});
  //@required annotation means this property is required to be initialized

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour, //color property go inside decoration
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

}
