import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key, required this.title, required this.canPop,
  }) : super(key: key);

  final String title;
  final bool canPop;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          if (canPop) Center(
            child: Row(
              children: [
                TextButton(
                  child: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Routemaster.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
