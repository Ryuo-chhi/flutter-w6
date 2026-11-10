import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.

enum IconPosition { left, right }

enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  const ButtonType(this.color);
  final Color color;
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              spacing: 10,
              children: [
                CustomButton(
                  label: "Submitted",
                  icon: Icons.check,
                  type: ButtonType.primary,
                ),
                CustomButton(
                  label: "Time",
                  icon: Icons.timer,
                  type: ButtonType.secondary,
                  iconPosition: IconPosition.right,
                ),
                CustomButton(
                  label: "Account",
                  icon: Icons.account_circle_outlined,
                  type: ButtonType.disabled,
                  iconPosition: IconPosition.right,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.icon,
      this.type = ButtonType.primary,
      this.iconPosition = IconPosition.left});

  final String label;
  final IconData icon;
  final ButtonType type;
  final IconPosition iconPosition;

  @override
  Widget build(BuildContext context) {

    final iconWidget = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
    );

    final textWidget = Text(
      label,
      style: TextStyle(color: Colors.white),
    );

    final children = [iconWidget, textWidget];

    return Container(
      decoration: BoxDecoration(
          color: type.color, borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: iconPosition == IconPosition.left
            ? children
            : children.reversed.toList(),
      ),
    );
  }
}
