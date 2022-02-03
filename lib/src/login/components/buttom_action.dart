import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  final double textSize;
  final String text;
  final Color corButton;
  final Icon iconButton;
  final VoidCallback? callback;

  // ignore: use_key_in_widget_constructors
  const ButtonAction({
    required this.textSize,
    required this.text,
    required this.iconButton,
    this.callback,
    required this.corButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18.0,
      ),
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(corButton),
          elevation: MaterialStateProperty.all(9.0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.fromLTRB(26, 12, 26, 12),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed: callback,
        icon: iconButton,
        label: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}

/* ElevatedButton(

        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
          ),
        ),
        style: ButtonStyle(
          
          backgroundColor: MaterialStateProperty.all(corButton),
          elevation: MaterialStateProperty.all(9.0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.fromLTRB(26, 12, 26, 12),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed: callback,
      ),
    ); */