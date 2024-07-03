import 'package:flutter/material.dart';
import 'package:testapp/app/widget/appbar.dart';

class FormWidget extends StatelessWidget {
  final Widget child;
  final bool canPop;
  const FormWidget({super.key, required this.child, required this.canPop});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          color: const Color(0xffeeeeee),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              color: Color(0xffe4e4e4),
              child: AppBarWidget(
                title: 'Posts',
                canPop: canPop,
              ),
            ),
            Expanded(child: SingleChildScrollView(child: child)),
          ],
        ),
      ),
    );
  }
}
