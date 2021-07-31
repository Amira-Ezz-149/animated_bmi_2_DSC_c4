import 'package:flutter/material.dart';

class RoundedIconButton extends StatefulWidget {
  final Function onPress;
  final IconData icon;

  const RoundedIconButton({Key key, this.onPress, this.icon}) : super(key: key);

  @override
  _RoundedIconButtonState createState() => _RoundedIconButtonState();
}

class _RoundedIconButtonState extends State<RoundedIconButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPress,
      child: Icon(
        widget.icon,
        size: 15,
      ),
      fillColor: Colors.black,
      elevation: 5.0,
      constraints: BoxConstraints.tightFor(
        width: 20,
        height: 20,
      ),
      shape: CircleBorder(),
    );
  }
}
