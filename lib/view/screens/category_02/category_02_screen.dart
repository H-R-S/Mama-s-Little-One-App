import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mama_little_one/resources/constants/images.dart';
import '../../../resources/constants/sounds.dart';
import '../../widgets/app_bar/my_app_bar.dart';

class Category02Screen extends StatelessWidget {
  Category02Screen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

    return Scaffold(
        appBar: MyAppBar(scaffoldKey, context, title: "Category 02"),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  const Text("CRYING OR VOICES AND THEIR MEANING",
                      textAlign: TextAlign.center, style: style),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(dataRowHeight: 100, columns: const [
                            DataColumn(label: Expanded(child: Text("No"))),
                            DataColumn(label: Text("Sound")),
                            DataColumn(label: Text("Play Voice")),
                            DataColumn(label: Text("Meaning"))
                          ], rows: [
                            DataRow(cells: [
                              const DataCell(Text("1")),
                              const DataCell(Text("Neh")),
                              DataCell(IconButton(
                                  onPressed: () {
                                    final player=AudioPlayer();
                                    player.play(AssetSource(nehSound));
                                  },
                                  icon: const Icon(Icons.play_circle))),
                              const DataCell(Text("I’m Hungry"))
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("2")),
                              const DataCell(Text("Eh")),
                              DataCell(IconButton(
                                  onPressed: () {
                                    final player=AudioPlayer();
                                    player.play(AssetSource(ehSound));
                                  },
                                  icon: const Icon(Icons.play_circle))),
                              const DataCell(Text("I want to burp"))
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("3")),
                              const DataCell(Text("Eairh")),
                              DataCell(IconButton(
                                  onPressed: () {
                                    final player=AudioPlayer();
                                    player.play(AssetSource(eairhSound));
                                  },
                                  icon: const Icon(Icons.play_circle))),
                              const DataCell(Text("I want to release gas"))
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("4")),
                              const DataCell(Text("Heh")),
                              DataCell(IconButton(
                                  onPressed: () {
                                    final player=AudioPlayer();
                                    player.play(AssetSource(hehSound));
                                  },
                                  icon: const Icon(Icons.play_circle))),
                              const DataCell(Text("My skin is irritated"))
                            ]),
                            DataRow(cells: [
                              const DataCell(Text("5")),
                              const DataCell(Text("Owh")),
                              DataCell(IconButton(
                                  onPressed: () {
                                    final player=AudioPlayer();
                                    player.play(AssetSource(owhSound));
                                  },
                                  icon: const Icon(Icons.play_circle))),
                              const DataCell(Text("I want to sleep"))
                            ])
                          ]))),
                  const SizedBox(height: 20),
                  Image.asset(cat02image),
                  const SizedBox(height: 20),
                  Image.asset(cat02image02),
                  const SizedBox(height: 20),
                  Image.asset(cat02image03)
                ]))));
  }
}
