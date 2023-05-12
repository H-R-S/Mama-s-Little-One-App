import 'package:flutter/material.dart';
import '../../../resources/constants/icons.dart';
import '../../../resources/constants/images.dart';
import '../../widgets/app_bar/my_app_bar.dart';

class Category01Screen extends StatelessWidget {
  Category01Screen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

    return Scaffold(
        appBar: MyAppBar(scaffoldKey, context, title: "Category 01"),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                    child: Column(children: [
                  const Text("HAND AND BODY GESTURES",
                      textAlign: TextAlign.center, style: style),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(dataRowHeight: 150, columns: const [
                            DataColumn(label: Text("No")),
                            DataColumn(
                                label: Expanded(
                              child: Text("Hand and body language",
                                  overflow: TextOverflow.ellipsis, maxLines: 2),
                            )),
                            DataColumn(label: Text("Meaning")),
                            DataColumn(label: Text("Representation")),
                          ], rows: [
                            DataRow(cells: [
                              const DataCell(Text("01")),
                              const DataCell(Text("Closed Fists")),
                              const DataCell(Text("Baby is hungry ")),
                              DataCell(Image.asset(closeHandIcon, height: 100))
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("02")),
                              const DataCell(Text("Open Hands")),
                              const DataCell(Text("Baby is full ")),
                              DataCell(Image.asset(openHandIcon, height: 100))
                            ])
                          ]))),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(dataRowHeight: 150, columns: const [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Need/Want")),
                            DataColumn(label: Text("Signs")),
                          ], rows: const [
                            DataRow(cells: [
                              DataCell(Text("01")),
                              DataCell(Text("I’m Hungry")),
                              DataCell(Text(
                                  "• Turning towards breasts or bottle\n• Making sucking sounds")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("02")),
                              DataCell(Text("I’m Tired")),
                              DataCell(Text(
                                  "• Disinterested in playing\n• Yawning or staring at a distance")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("03")),
                              DataCell(Text("I need a Break")),
                              DataCell(Text(
                                  "• Squirming or kicking legs\n• Avoiding eye contact")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("04")),
                              DataCell(Text("I want to Play")),
                              DataCell(Text(
                                  "• Smiling, making eye contact\n• Smooth movements, trying to reach you/toys")),
                            ]),
                            DataRow(cells: [
                              DataCell(Text("05")),
                              DataCell(Text("I’m Unwell ")),
                              DataCell(Text(
                                  "• Not interested in feeding, sleeping, or activities\n• Seeming uncomfortable or crying constantly")),
                            ])
                          ]))),
                  const SizedBox(height: 20),
                  const Text("New Born Hunger Cue’s",
                      textAlign: TextAlign.center, style: style),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(dataRowHeight: 200, columns: const [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Time")),
                            DataColumn(label: Text("Behaviour")),
                            DataColumn(label: Text("Signs")),
                          ], rows: [
                            DataRow(cells: [
                              const DataCell(Text("01")),
                              const DataCell(Text("Early")),
                              DataCell(Image.asset(cat01image, height: 100)),
                              const DataCell(Text(
                                  "• lick and smack lips together\n• open and close mouth (think goldfish)\n• suck on lips, tongue & anything in vicinity\n• suck fingers, thumb or hands (babies 6-8 weeks+)")),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("02")),
                              const DataCell(Text("Active")),
                              DataCell(Image.asset(cat01image02, height: 100)),
                              const DataCell(Text(
                                  "• rooting reflex\n• nipple dive/try to get to breast\n• wriggle and squirm\n• headbutt chest\n• breathe fast\n• clench fists\n• start to fuss\n• \"NEH\" sound/cry")),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("03")),
                              const DataCell(Text("Late")),
                              DataCell(Image.asset(cat01image03, height: 100)),
                              const DataCell(Text(
                                  "• move head frantically from side to side\n• turn bright red\n• crying that grows in intensity")),
                            ])
                          ]))),
                  const SizedBox(height: 20),
                  Image.asset(cat01image04),
                  Image.asset(cat01image05),
                  const SizedBox(height: 20)
                ])))));
  }
}
