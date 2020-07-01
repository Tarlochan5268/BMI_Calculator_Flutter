import 'package:flutter/material.dart';
import 'constants.dart';

class CustomBottomBar extends StatelessWidget {
  final Function onTap;
  final String buttonBarTitle;

  CustomBottomBar({@required this.onTap, @required this.buttonBarTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*onTap: () {
        //Navigator.push(context,MaterialPageRoute(builder: (context) => ResultPage()));
        Navigator.pushNamed(context, '/result');
      },*/
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 20),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(
          buttonBarTitle,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
