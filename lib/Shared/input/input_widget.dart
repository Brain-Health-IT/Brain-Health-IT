// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saude_mental_ti/Shared/Themes/appcolors.dart';

class InputWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const InputWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 329,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 4.0),
            )
          ],
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: AppColors.confirm))),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: AppColors.blue),
                  const SizedBox(width: 12),
                  Container(height: 56, width: 1, color: AppColors.confirm),
                ],
              )),
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: label,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
