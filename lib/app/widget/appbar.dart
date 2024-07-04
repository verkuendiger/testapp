import 'package:flutter/material.dart';
import 'package:testapp/app/widget/button_filler.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    required this.canPop,
  });

  final String title;
  final bool canPop;

  @override
  Widget build(final BuildContext context) => SizedBox(
        height: 90,
        child: Stack(
          children: [
            if (canPop)
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ButtonFiller(
                    child: const Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                    callback: () => Navigator.pop(context),
                  ),
                ),
              ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
