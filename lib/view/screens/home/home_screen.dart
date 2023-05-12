import 'package:flutter/material.dart';
import '../../../resources/data/categories.dart';
import '../../widgets/app_bar/my_app_bar.dart';
import '../../widgets/info_container/info_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 16, 
    fontWeight: FontWeight.normal);

    return Scaffold(
        appBar: MyAppBar(scaffoldKey, context,
            title: "Mama's Little One",
            actionIcon: Icons.more_vert, onTapAction: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              context: context,
              builder: (context) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Developers:", style: style),
                        SizedBox(height: 20),
                        Text("(Sp22-bsph-0011) Rohab Usman", style: style),
                        Text("(Sp22-bsph-0016) Hajra Muzammil", style: style),
                        Text("(Sp22-bsph-0019) Marium Jamil", style: style),
                        Text("(Sp22-bsph-0022) Muskan Rawjani", style: style),
                        Text("(Sp22-bsph-0023) Aneesa", style: style),
                        Text("(Sp22-bsph-0029) Afroz fayyaz", style: style),
                        SizedBox(height: 40),
                        Text("Supervised By Aisha Rias Ahmed", 
                        textAlign: TextAlign.center,
                        style: style),
                      ])));
        }),
        bottomNavigationBar: const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Developed by MAJU Students with ♡",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey))),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return InfoContainer(
                      title: categoriesList[index]["title"],
                      description: categoriesList[index]["description"],
                      icon: categoriesList[index]["icon"],
                      onTap: () {
                        Navigator.pushNamed(
                            context, categoriesList[index]["route"]);
                      });
                })));
  }
}
