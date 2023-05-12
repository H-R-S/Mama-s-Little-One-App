import 'package:flutter/material.dart';

class ExpandableContainer extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ExpandableContainer(
      {super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border.all(color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(10)),
        child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
                backgroundColor: Colors.grey.shade50,
                childrenPadding:
                    const EdgeInsets.all(16).copyWith(bottom: 30, top: 10),
                textColor: Colors.black,
                iconColor: Colors.grey,
                title: Text(title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.normal)),
                children: children)));
  }
}
