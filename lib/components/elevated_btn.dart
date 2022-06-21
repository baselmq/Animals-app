import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn(
      {required String title,
      required Function() onClick,
      Color color = Colors.indigo,
      Key? key})
      : titleBtn = title,
        onClickBtn = onClick,
        colorBtn = color,
        super(key: key);

  final String titleBtn;
  final Color colorBtn;
  final Function() onClickBtn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onClickBtn,
        style: ElevatedButton.styleFrom(
          primary: colorBtn,
          onPrimary: Colors.white,
        ),
        child: Text(titleBtn),
      ),
    );
  }
}
