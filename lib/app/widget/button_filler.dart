import 'package:flutter/material.dart';

class ButtonFiller extends StatelessWidget {
  const ButtonFiller({required this.callback, required this.child, super.key});

  final VoidCallback callback;
  final Widget child;

  @override
  Widget build(final BuildContext context) => Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: callback,
          child: child,
        ),
      );
}
