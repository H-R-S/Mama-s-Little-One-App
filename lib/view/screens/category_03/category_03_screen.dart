import 'package:flutter/material.dart';
import 'package:mama_little_one/resources/constants/images.dart';
import '../../widgets/app_bar/my_app_bar.dart';
import '../../widgets/expandable_container/expandable_container.dart';

class Category03Screen extends StatelessWidget {
  Category03Screen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

    return Scaffold(
        appBar: MyAppBar(scaffoldKey, context, title: "Category 03"),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  const Text("CHART FOR FEED/FOOD",
                      textAlign: TextAlign.center, style: style),
                  const SizedBox(height: 20),
                  ExpandableContainer(
                      title: "0-1 month",
                      children: [Image.asset(cat03image_01)]),
                  ExpandableContainer(
                      title: "1-3 month",
                      children: [Image.asset(cat03image_02)]),
                  ExpandableContainer(title: "3-6 month", children: [
                    Image.asset(cat03image_03),
                    Image.asset(cat03image03),
                    Image.asset(cat03image03_01)
                  ]),
                  ExpandableContainer(title: "6-9 month", children: [
                    Image.asset(cat03image_04),
                    Image.asset(cat03image03),
                    Image.asset(cat03image03_02)
                  ]),
                  ExpandableContainer(title: "9-12 month", children: [
                    Image.asset(cat03image_05),
                    Image.asset(cat03image03),
                    Image.asset(cat03image03_03)
                  ]),
                  ExpandableContainer(title: "12+ month", children: [
                    Image.asset(cat03image03),
                    Image.asset(cat03image03_03)
                  ])
                ]))));
  }
}
