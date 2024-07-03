import 'package:flutter/material.dart';

class ButtonFiller extends StatelessWidget {
  final VoidCallback callback;
  final Widget child;

  const ButtonFiller({required this.callback, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          callback();
        },
        child: child,
      ),
    );
  }
}
