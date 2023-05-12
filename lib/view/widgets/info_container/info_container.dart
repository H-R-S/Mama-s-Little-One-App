import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String title, description, icon;
  final Function() onTap;

  const InfoContainer(
      {super.key,
      required this.title,
      required this.description,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 18);

    return InkWell(
        onTap: onTap,
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 50,
                  child: Image.asset(icon, height: 100)),
              const SizedBox(width: 20),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(title, style: style),
                    const SizedBox(height: 10),
                    Text(description,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: style.copyWith(fontSize: 14))
                  ]))
            ])));
  }
}
