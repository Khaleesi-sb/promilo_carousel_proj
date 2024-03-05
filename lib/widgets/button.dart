import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';

class Button extends StatefulWidget {
  const Button(
      {super.key,
      required this.btnText,
      this.height,
      this.width,
        this.borderRadius,
      required this.onClick});

  final String btnText;
  final void Function() onClick;
  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onClick,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: Size(widget.width ?? 100, widget.height ?? 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 12))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: widget.btnText,
              textColor: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
