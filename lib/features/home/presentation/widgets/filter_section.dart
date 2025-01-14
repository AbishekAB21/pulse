// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pulse/features/home/presentation/widgets/filter_button.dart';

class FilterSection extends StatelessWidget {
  bool isVisible;
  FilterSection({super.key, required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterButton(button_title: "All"),
          FilterButton(button_title: "Sports"),
          FilterButton(button_title: "Politics"),
          FilterButton(button_title: "Business"),
          FilterButton(button_title: "Entertainment"),
        ],
      ),
    );
  }
}
